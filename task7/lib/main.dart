import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget buildCard({required Widget child}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        border: Border.all(color: Colors.black54, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Task 7",style:TextStyle(color:Colors.white) ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite_border,color: Colors.white,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

   
            buildCard(
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.person, size: 30),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohamed Wael Mahdi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text("Flutter Developer"),
                    ],
                  )
                ],
              ),
            ),

       
            buildCard(
              child: const Center(
                child: Text(
                  "Life is like riding a bicycle. To keep your balance, you must keep moving.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),

            buildCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      5,
                          (index) => Icon(
                        index < 4 ? Icons.star : Icons.star_border,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const Text("150 Reviews",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Icon(Icons.share, color: Colors.blue),
                ],
              ),
            ),

            buildCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.code),
                      SizedBox(height: 8),
                      Text("EXP:"),
                      Text("-2 Yrs"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.bug_report),
                      SizedBox(height: 8),
                      Text("Bugs:"),
                      Text("∞"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.coffee),
                      SizedBox(height: 8),
                      Text("COFFEE:"),
                      Text("∞"),
                    ],
                  ),
                ],
              ),
            ),


            buildCard(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.my_location, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        "My Hobbies:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("1. Sleeping"),
                  Text("2. Watching F1"),
                  Text("3. Sleeping again"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}