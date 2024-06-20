import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:next_class/screens/bottombar.dart';
import 'package:next_class/screens/login_screen.dart';
import 'data/firebase_api.dart';
import 'data/slot.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessagingService messagingService = FirebaseMessagingService();
  await messagingService.setupFirebaseMessaging();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Slot> events = [];

  int getDayOfWeekAsNumber(DateTime date) {
    return date.weekday % 7;
  }

  void getEvents() async {
    final url = Uri.https('nextclass-e95e8-default-rtdb.firebaseio.com', 'events.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> eventsData = jsonDecode(response.body);
      final List<Slot> loadedEvents = [];

      eventsData.forEach((id, data) {
        final Slot event = Slot.fromJson(data);
        loadedEvents.add(event);
      });

      setState(() {
        events = loadedEvents;
      });
    } else {
      print('Failed to load events');
    }
  }

  @override
  void initState() {
    super.initState();
    getEvents();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int dayOfWeekAsNumber = getDayOfWeekAsNumber(now);

    return MaterialApp(
      title: 'Next Class',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? LoginScreen(events: events)
          : BottomBarScreen(events: events),
    );
  }
}
