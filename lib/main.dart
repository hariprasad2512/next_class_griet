
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:next_class/screens/bottombar.dart';
import 'package:next_class/screens/login_screen.dart';
import 'data/firebase_api.dart';
import 'data/slot.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessagingService messagingService = FirebaseMessagingService();
  await messagingService.setupFirebaseMessaging();
  // For handling background notifications
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  int getDayOfWeekAsNumber(DateTime date) {
    return date.weekday % 7;
  }

// UG 3 GRIET Timetable


// AI ML - ['ML','SE',’ML LAB','BDA','BDA LAB','CC','HCI','COI','MPS'].....


// AI ML --- MONDAY Timetable
  final event1 = Slot(
    UG: 3,
    eventName: 'SE',
    startTime: '09:00',
    endTime: '09:55',
    recurrenceDays: [1], roomNumber: '2208', enrolled: true, // Occurs on Monday
  );

  final event2 = Slot(
    UG: 3,
    eventName: 'CC',
    startTime: '09:55',
    endTime: '11:45',
    recurrenceDays: [1], roomNumber: '2208', enrolled: true, // Occurs on Monday
  );

  final event3 = Slot(
    UG: 3,
    eventName: 'ML',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [1], roomNumber: '2208', enrolled: true, // Occurs on Monday
  );

  final event4 = Slot(
    UG: 3,
    eventName: 'BDA',
    startTime: '13:15',
    endTime: '14:55',
    recurrenceDays: [1], roomNumber: '2208', enrolled: true, // Occurs on Monday
  );

//AIML --- Tuesday Timetable
  final event5 = Slot(
    UG: 3,
    eventName: 'ML LAB',
    startTime: '09:00',
    endTime: '11:45',
    recurrenceDays: [2], roomNumber: '2306/2307', enrolled: true, // Occurs on Tuesday
  );

  final event6 = Slot(
    UG: 3,
    eventName: 'HCI',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [2], roomNumber: '2208', enrolled: true, // Occurs on Tuesday
  );

  final event7 = Slot(
    UG: 3,
    eventName: 'ML',
    startTime: '14:05',
    endTime: '14:55',
    recurrenceDays: [2], roomNumber: '2208', enrolled: true, // Occurs on Tuesday
  );

//AIML --- Wednesday Timetable
  final event8 = Slot(
    UG: 3,
    eventName: 'BDA',
    startTime: '09:00',
    endTime: '09:55',
    recurrenceDays: [3], roomNumber: '2208', enrolled: true, // Occurs on Wednesday
  );

  final event9 = Slot(
    UG: 3,
    eventName: 'SE',
    startTime: '09:55',
    endTime: '11:45',
    recurrenceDays: [3], roomNumber: '2208', enrolled: true, // Occurs on Wednesday
  );

  final event10 = Slot(
    UG: 3,
    eventName: 'HCI',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [3], roomNumber: '2208', enrolled: true, // Occurs on Wednesday
  );

  final event11 = Slot(
    UG: 3,
    eventName: 'CC',
    startTime: '13:15',
    endTime: '14:55',
    recurrenceDays: [3], roomNumber: '2208', enrolled: true, // Occurs on Wednesday
  );

//AIML --- Thursday Timetable
  final event12 = Slot(
    UG: 3,
    eventName: 'COI',
    startTime: '09:00',
    endTime: '09:55',
    recurrenceDays: [4], roomNumber: '2208', enrolled: true, // Occurs on Thursday
  );

  final event13 = Slot(
    UG: 3,
    eventName: 'ML',
    startTime: '09:55',
    endTime: '11:45',
    recurrenceDays: [4], roomNumber: '2208', enrolled: true, // Occurs on Thursday
  );

  final event14 = Slot(
    UG: 3,
    eventName: 'BDA LAB',
    startTime: '12:25',
    endTime: '14:55',
    recurrenceDays: [4], roomNumber: '2101/2102', enrolled: true, // Occurs on Thursday
  );

//AIML --- Friday Timetable
  final event15 = Slot(
    UG: 3,
    eventName: 'CC',
    startTime: '09:00',
    endTime: '09:55',
    recurrenceDays: [5], roomNumber: '2208', enrolled: true, // Occurs on Friday
  );

  final event16 = Slot(
    UG: 3,
    eventName: 'ML',
    startTime: '09:55',
    endTime: '10:50',
    recurrenceDays: [5], roomNumber: '2208', enrolled: true, // Occurs on Friday
  );

  final event17 = Slot(
    UG: 3,
    eventName: 'HCI',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [5], roomNumber: '2208', enrolled: true, // Occurs on Friday
  );

  final event18 = Slot(
    UG: 3,
    eventName: 'COI',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [5], roomNumber: '2208', enrolled: true, // Occurs on Friday
  );

  final event19 = Slot(
    UG: 3,
    eventName: 'SE',
    startTime: '13:15',
    endTime: '14:55',
    recurrenceDays: [5], roomNumber: '2208', enrolled: true, // Occurs on Friday
  );


//AIML --- Saturday Timetable
  final event20 = Slot(
    UG: 3,
    eventName: 'ML',
    startTime: '09:00',
    endTime: '09:55',
    recurrenceDays: [6], roomNumber: '2208', enrolled: true, // Occurs on Saturday
  );

  final event21 = Slot(
    UG: 3,
    eventName: 'BDA',
    startTime: '09:55',
    endTime: '11:45',
    recurrenceDays: [6], roomNumber: '2208', enrolled: true, // Occurs on Saturday
  );

  final event22 = Slot(
    UG: 3,
    eventName: 'MPS',
    startTime: '12:25',
    endTime: '14:55',
    recurrenceDays: [6], roomNumber: '2106/2107', enrolled: true, // Occurs on Saturday
  );



  // ECE Section B

  final event101 = Slot(
    UG: 3,
    eventName: 'AWP-B',
    startTime: '9:00',
    endTime: '9:55',
    recurrenceDays: [1], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event102 = Slot(
    UG: 3,
    eventName: 'DSP-B',
    startTime: '9:55',
    endTime: '10:50',
    recurrenceDays: [1], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event103 = Slot(
    UG: 3,
    eventName: 'VLSI-B',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [1], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event104 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-B',
    startTime: '12:25',
    endTime: '15:00',
    recurrenceDays: [1], roomNumber: '4507/4508', enrolled: true, // Occurs on Saturday
  );

  final event105 = Slot(
    UG: 3,
    eventName: 'AWP-B',
    startTime: '9:00',
    endTime: '9:55',
    recurrenceDays: [2], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event106 = Slot(
    UG: 3,
    eventName: 'VLSI-B',
    startTime: '9:55',
    endTime: '10:50',
    recurrenceDays: [2], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event107 = Slot(
    UG: 3,
    eventName: 'VEGC-B',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [2], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event108 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-B',
    startTime: '12:25',
    endTime: '15:00',
    recurrenceDays: [2], roomNumber: '4507/4508', enrolled: true, // Occurs on Saturday
  );

  final event109 = Slot(
    UG: 3,
    eventName: 'AWP-B',
    startTime: '9:00',
    endTime: '10:50',
    recurrenceDays: [3], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );



  final event111 = Slot(
    UG: 3,
    eventName: 'VLSI-B',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [3], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event112 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-B',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [3], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event113 = Slot(
    UG: 3,
    eventName: 'DSP-B',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [3], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event114 = Slot(
    UG: 3,
    eventName: 'DSP-B',
    startTime: '9:00',
    endTime: '10:50',
    recurrenceDays: [4], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );


  final event116 = Slot(
    UG: 3,
    eventName: 'VLSI-B',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [4], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event117 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-B',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [4], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event118 = Slot(
    UG: 3,
    eventName: 'NPTEL/PROJECT-B',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [4], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );
  final event119 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-B',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [5], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event120 = Slot(
    UG: 3,
    eventName: 'DSP-B',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [5], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event121 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-B',
    startTime: '13:15',
    endTime: '15:00',
    recurrenceDays: [5], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event122 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-B',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [6], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event123 = Slot(
    UG: 3,
    eventName: 'AWP-B',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [6], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event124 = Slot(
    UG: 3,
    eventName: 'VLSI-B',
    startTime: '13:15',
    endTime: '14:05',
    recurrenceDays: [6], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );

  final event125 = Slot(
    UG: 3,
    eventName: 'MENTORING-B',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [6], roomNumber: '4512', enrolled: true, // Occurs on Saturday
  );



  final event25 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-A',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [1], roomNumber: '4508/4507', enrolled: true, // Occurs on Monday
  );


  final event26 = Slot(
    UG: 3,
    eventName: 'VLSI-A',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [1], roomNumber: '4502', enrolled: true, // Occurs on Monday
  );

  final event27 = Slot(
    UG: 3,
    eventName: 'AWP-A',
    startTime: '13:15',
    endTime: '15:00',
    recurrenceDays: [1], roomNumber: '4502', enrolled: true, // Occurs on Monday
  );

  final event28 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-A',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [2], roomNumber: '4508/4507', enrolled: true, // Occurs on Tuesday
  );

  final event29 = Slot(
    UG: 3,
    eventName: 'DSP-A',
    startTime: '12:45',
    endTime: '14:05',
    recurrenceDays: [2], roomNumber: '4502', enrolled: true, // Occurs on Tuesday
  );

  final event30 = Slot(
    UG: 3,
    eventName: 'NPTEL-A',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [2], roomNumber: '4502', enrolled: true, // Occurs on Tuesday
  );

  final event31 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-A',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [3], roomNumber: '4502', enrolled: true, // Occurs on Wednesday
  );

  final event32 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-A',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [3], roomNumber: '4502', enrolled: true, // Occurs on Wednesday
  );

  final event33 = Slot(
    UG: 3,
    eventName: 'AWP-A',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [3], roomNumber: '4502', enrolled: true, // Occurs on Wednesday
  );

  final event34 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-A',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [4], roomNumber: '4502', enrolled: true, // Occurs on Thursday
  );

  final event35 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-A',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [4], roomNumber: '4502', enrolled: true, // Occurs on Thursday
  );

  final event36 = Slot(
    UG: 3,
    eventName: 'VLSI-A',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [4], roomNumber: '4502', enrolled: true, // Occurs on Thursday
  );

  final event37 = Slot(
    UG: 3,
    eventName: 'DSP-A',
    startTime: '9:00',
    endTime: '9:55',
    recurrenceDays: [5], roomNumber: '4502', enrolled: true, // Occurs on Friday
  );

  final event38 = Slot(
    UG: 3,
    eventName: 'VLSI-A',
    startTime: '9:55',
    endTime: '11:45',
    recurrenceDays: [5], roomNumber: '4502', enrolled: true, // Occurs on Friday
  );

  final event39 = Slot(
    UG: 3,
    eventName: 'VEGC-A',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [5], roomNumber: '4502', enrolled: true, // Occurs on Friday
  );

  final event40 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-A',
    startTime: '13:15',
    endTime: '15:00',
    recurrenceDays: [5], roomNumber: '4502', enrolled: true, // Occurs on Friday
  );

  final event41 = Slot(
    UG: 3,
    eventName: 'AWP-A',
    startTime: '9:00',
    endTime: '10:50',
    recurrenceDays: [6], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event42 = Slot(
    UG: 3,
    eventName: 'VLSI-A',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [6], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event43 = Slot(
    UG: 3,
    eventName: 'DSP-A',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [6], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );

  final event44 = Slot(
    UG: 3,
    eventName: 'MENTORING-A',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [6], roomNumber: '4502', enrolled: true, // Occurs on Saturday
  );



  final event201 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-C',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [1], roomNumber: '4504', enrolled: true, // Occurs on Monday
  );


  final event202 = Slot(
    UG: 3,
    eventName: 'DSP-C',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [1], roomNumber: '4504', enrolled: true, // Occurs on Monday
  );

  final event203 = Slot(
    UG: 3,
    eventName: 'AWP-C',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [1], roomNumber: '4504', enrolled: true, // Occurs on Monday
  );

  final event204 = Slot(
    UG: 3,
    eventName: 'AWP-C',
    startTime: '9:00',
    endTime: '10:50',
    recurrenceDays: [2], roomNumber: '4504', enrolled: true, // Occurs on Tuesday
  );

  final event205 = Slot(
    UG: 3,
    eventName: 'DSP-C',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [2], roomNumber: '4504', enrolled: true, // Occurs on Tuesday
  );

  final event206 = Slot(
    UG: 3,
    eventName: 'MINI PROJECT-C',
    startTime: '12:25',
    endTime: '15:00',
    recurrenceDays: [2], roomNumber: '4504', enrolled: true, // Occurs on Tuesday
  );

  final event207 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-C',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [3], roomNumber: '4508/4507', enrolled: true, // Occurs on Wednesday
  );

  final event208 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-C',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [3], roomNumber: '4504', enrolled: true, // Occurs on Wednesday
  );

  final event209 = Slot(
    UG: 3,
    eventName: 'VLSI-C',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [3], roomNumber: '4504', enrolled: true, // Occurs on Wednesday
  );

  final event210 = Slot(
    UG: 3,
    eventName: 'DSP LAB/VLSI LAB-C',
    startTime: '9:00',
    endTime: '11:45',
    recurrenceDays: [4], roomNumber: '4504', enrolled: true, // Occurs on Thursday
  );

  final event211 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-C',
    startTime: '12:25',
    endTime: '14:05',
    recurrenceDays: [4], roomNumber: '4504', enrolled: true, // Occurs on Thursday
  );

  final event212 = Slot(
    UG: 3,
    eventName: 'AWP-C',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [4], roomNumber: '4504', enrolled: true, // Occurs on Thursday
  );

  final event213 = Slot(
    UG: 3,
    eventName: 'DSP-C',
    startTime: '9:00',
    endTime: '9:55',
    recurrenceDays: [5], roomNumber: '4504', enrolled: true, // Occurs on Friday
  );

  final event214 = Slot(
    UG: 3,
    eventName: 'VLSI-C',
    startTime: '9:55',
    endTime: '11:45',
    recurrenceDays: [5], roomNumber: '4504', enrolled: true, // Occurs on Friday
  );

  final event215 = Slot(
    UG: 3,
    eventName: 'AWP-C',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [5], roomNumber: '4504', enrolled: true, // Occurs on Friday
  );

  final event216 = Slot(
    UG: 3,
    eventName: 'ESD/ITML-C',
    startTime: '13:15',
    endTime: '15:00',
    recurrenceDays: [5], roomNumber: '4504', enrolled: true, // Occurs on Friday
  );

  final event217 = Slot(
    UG: 3,
    eventName: 'VLSI-C',
    startTime: '9:00',
    endTime: '10:50',
    recurrenceDays: [6], roomNumber: '4504', enrolled: true, // Occurs on Saturday
  );

  final event218 = Slot(
    UG: 3,
    eventName: 'DSP-C',
    startTime: '10:50',
    endTime: '11:45',
    recurrenceDays: [6], roomNumber: '4504', enrolled: true, // Occurs on Saturday
  );

  final event219 = Slot(
    UG: 3,
    eventName: 'VEGC-C',
    startTime: '12:25',
    endTime: '13:15',
    recurrenceDays: [6], roomNumber: '4504', enrolled: true, // Occurs on Saturday
  );

  final event220 = Slot(
    UG: 3,
    eventName: 'MENTORING-C',
    startTime: '13:15',
    endTime: '14:05',
    recurrenceDays: [6], roomNumber: '4504', enrolled: true, // Occurs on Saturday
  );

  final event221 = Slot(
    UG: 3,
    eventName: 'NPTEL-C',
    startTime: '14:05',
    endTime: '15:00',
    recurrenceDays: [6], roomNumber: '4504', enrolled: true, // Occurs on Saturday
  );



  @override
  Widget build(BuildContext context) {

    final List<Slot>events = [
      event1,
      event2,
      event3,
      event4,
      event5,
      event6,
      event7,
      event8,
      event9,
      event10,
      event11,
      event12,
      event13,
      event15,
      event14,
      event18, event19, event20, event21,event22,
      event25, event26, event27, event28, event29, event30, event31, event32, event33, event34, event35, event36, event37, event38, event39, event40, event41, event42, event43, event44,
      event101, event102, event103, event104, event105, event106, event107, event108, event109, event111, event112, event113, event114,event116, event117, event118,
      event119, event120, event121, event122, event123, event124, event125,
      event201, event202, event203, event204, event205, event206, event207, event208, event209, event210, event211, event212, event213, event214, event215, event216, event217, event218, event219, event220, event221
    ];

    DateTime now = DateTime.now();
    int dayOfWeekAsNumber = getDayOfWeekAsNumber(now);

    return MaterialApp(
        title: 'Next Class',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        //home : UGPage(events: events,),
        home: FirebaseAuth.instance.currentUser == null ? LoginScreen(events: events) : BottomBarScreen(events: events)
    );
  }
}
