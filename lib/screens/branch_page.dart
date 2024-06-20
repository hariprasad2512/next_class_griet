import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:next_class/screens/bottombar.dart';
import 'package:next_class/screens/subjects_page.dart';

import '../data/slot.dart';

class BranchSelection extends StatelessWidget {
  List<String> cseA = ['ML-CSE-A','FLAT-A','SE-CSE-A','CC-A','OE-A','ML LAB-CSE-A','UML LAB-A','MPS-A','COI-CSE-A'];
  List<String> cseB = ['ML-CSE-B','FLAT-B','SE-CSE-B','CC-B','OE-B','ML LAB-CSE-B','UML LAB-B','MPS-B','COI-CSE-B'];
  List<String> cseC = ['ML-CSE-C','FLAT-C','SE-CSE-C','CC-C','OE-C','ML LAB-CSE-C','UML LAB-C','MPS-C','COI-CSE-C'];
  List<String> cseD = ['ML-CSE-D','FLAT-D','SE-CSE-D','CC-D','OE-D','ML LAB-CSE-D','UML LAB-D','MPS-D','COI-CSE-D'];
  List<String> cseE = ['ML-CSE-E','FLAT-E','SE-CSE-E','CC-E','OE-E','ML LAB-CSE-E','UML LAB-E','MPS-E','COI-CSE-E'];
  List<String> cseF = ['ML-CSE-F','FLAT-F','SE-CSE-F','CC-F','OE-F','ML LAB-CSE-F','UML LAB-F','MPS-F','COI-CSE-F'];
  List<String> itA  = ['FME-A','ML-IT-A','FSD-A','UP-A','OE-A','ML LAB-IT-A','FSD LAB-A','MP LAB-A','VAC-A'];
  List<String> itB = ['FME-B','ML-IT-B','FSD-B','UP-B','OE-B','ML LAB-IT-B','FSD LAB-B','MP LAB-B','VAC-B'];
  List<String> itC =  ['FME-C','ML-IT-C','FSD-C','UP-C','OE-C','ML LAB-IT-C','FSD LAB-C','MP LAB-C','VAC-C'];
  List<String> aimlA  = ['ML-A','BDA-A','CC-A','SE-A','HCI-A','ML LAB-A','BDA LAB-A','MPS-A','COI-A'];
  List<String> aimlB = ['ML-B','BDA-B','CC-B','SE-B','HCI-B','ML LAB-B','BDA LAB-B','MPS-B','COI-B'];
  List<String> aimlC =  ['ML-C','BDA-C','CC-C','SE-C','HCI-C','ML LAB-C','BDA LAB-C','MPS-C','COI-C'];
  List<String> eceA =   ['DSP-A','VLSI-A','AWP-A','ESD-A','ITML-A','DSP LAB-A','VLSI LAB-A','MINI PROJECT-A','VEGC-A','NPTEL-A','MENTORING-A'];
  List<String> eceB =  ['DSP-B','VLSI-B','AWP-B','ESD-B','ITML-B','DSP LAB-B','VLSI LAB-B','MINI PROJECT-B','VEGC-B','NPTEL-B','MENTORING-B'];
  List<String> eceC =  ['DSP-C','VLSI-C','AWP-C','ESD-C','ITML-C','DSP LAB-C','VLSI LAB-C','MINI PROJECT-C','VEGC-C','NPTEL-C','MENTORING-C'];

  // List<String> ece =['VLSI','DSP','PR','WC','MPMC','EP','IDA UG3','ICPS UG3','QRA 1','QRA 2','QRA 3','SE UG3','PGP UG3','QIC',];
  List<String> cse1 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];
  List<String> ece1 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];
  List<String> cse2 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];
  List<String> ece2 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];
  List<String> cse4 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];
  List<String> ece4 = ['ML-A','FLAT-A','SE-A','CC-A','OE-A','ML LAB-A','UML LAB-A','MPS-A','COI-A'];

  final List<Slot> events;
  final int ug;
  BranchSelection({required this.events,required this.ug});






  @override
  Widget build(BuildContext context) {


    Map<int,Map<String,List<String>>> subUGs=
    {
      1: {'CSE': cse1, 'ECE': ece1},
      2: {'CSE': cse2, 'ECE': ece2},
      3: {'CSE-A': cseA,'CSE-B': cseB,'CSE-C': cseC,'CSE-D': cseD,'CSE-E': cseE,'CSE-F': cseF, 'ECE-A': eceA,'ECE-B': eceB,'ECE-C': eceC, 'AI/ML-A': aimlA,'AI/ML-B': aimlB,'AI/ML-C': aimlC,'IT-A': itA,'IT-B': itB,'IT-C': itC,},
      4: {'CSE': cse4, 'ECE': ece4},
    };
    void _onBranchSelected(BuildContext context, String branch) async {



      if(branch=='CSE-A'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-A'] ?? [],events: events,)));
      }
      else if(branch == 'CSE-B'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-B'] ?? [],events: events,)));

      }
      else if(branch == 'CSE-C'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-C'] ?? [],events: events,)));

      }
      else if(branch == 'CSE-D'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-D'] ?? [],events: events,)));

      }
      else if(branch == 'CSE-E'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-E'] ?? [],events: events,)));

      }
      else if(branch == 'CSE-F'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-F'] ?? [],events: events,)));

      }
      else if(branch == 'ECE-A'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['ECE-A'] ?? [],events: events,)));

      }
      else if(branch == 'ECE-B'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['ECE-B'] ?? [],events: events,)));

      }
      else if(branch == 'ECE-C'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['ECE-C'] ?? [],events: events,)));

      }
      else if(branch == 'IT-A'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['IT-A'] ?? [],events: events,)));

      }
      else if(branch == 'IT-B'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['IT-B'] ?? [],events: events,)));

      }
      else if(branch == 'IT-C'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['IT-C'] ?? [],events: events,)));

      }
      else if(branch == 'AI/ML-A'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['AI/ML-A'] ?? [],events: events,)));

      }
      else if(branch == 'AI/ML-B'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['AI/ML-B'] ?? [],events: events,)));

      }
      else if(branch == 'AI/ML-C'){
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['AI/ML-C'] ?? [],events: events,)));

      }
      else{
        Navigator.push((context),MaterialPageRoute(builder: (context)=>Subjects(subjects: subUGs[ug]!['CSE-A'] ?? [],events: events,)));

      }
      //   } catch (e) {
      //   print('Error saving branch to Firestore: $e');
      //   // Handle the error, e.g., show an error message.
      // }
    }


    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   }),
      // ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/boy_falling_cropped.png',width: 250,height: 250,),
                ],
              ),
              Text('Select your Branch',style: TextStyle(fontSize: 30),),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-A'),
                child: Text('CSE-A'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-B'),
                child: Text('CSE-B'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-C'),
                child: Text('CSE-C'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-C'),
                child: Text('CSE-C'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-D'),
                child: Text('CSE-D'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-E'),
                child: Text('CSE-E'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'CSE-F'),
                child: Text('CSE-F'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'IT-A'),
                child: Text('IT-A'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'IT-B'),
                child: Text('IT-B'),
              ),

              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'IT-C'),
                child: Text('IT-C'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'ECE-A'),
                child: Text('ECE-A'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'ECE-B'),
                child: Text('ECE-B'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'ECE-C'),
                child: Text('ECE-C'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'AI/ML-A'),
                child: Text('AI/ML-A'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'AI/ML-B'),
                child: Text('AI/ML-B'),
              ),
              ElevatedButton(
                onPressed: () => _onBranchSelected(context, 'AI/ML-C'),
                child: Text('AI/ML-C'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/boy_working.png',width: 180,height: 180,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}