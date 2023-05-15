// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/pages/chat_body.dart';
import 'package:mental_health/pages/chess.dart';
import 'package:mental_health/pages/habitsPage.dart';
import 'package:mental_health/pages/login_page.dart';
import 'package:mental_health/pages/profilePage.dart';
import 'package:mental_health/pages/progressPage.dart';
import 'package:mental_health/util/emoticon_face.dart';
import 'package:mental_health/util/exercise_tile.dart';
import 'package:mental_health/pages/HomePage.dart';

import '../util/emoticon_face.dart';
import '../util/exercise_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;
   void signUserOut() {
     FirebaseAuth.instance.signOut();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222831),
      appBar: AppBar(
        backgroundColor: Color(0xFF222831),
        actions: [
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Hi Roy!
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Hi Roy!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '9 March, 2023',
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 150),

              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF393e46),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),

              //Notification
              const SizedBox(
                width: 29,
              ),
            ],
          ),
          Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFF393e46),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                  onPressed: signUserOut,
                  icon: const Icon(
                    Icons.logout,
                    size: 30,
                  )))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF222831),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xFF00adb5),), label: 'Home', backgroundColor: Color(0xFF222831)),
          BottomNavigationBarItem(icon: Icon(Icons.message, color: Color(0xFF00adb5),), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Color(0xFF00adb5),), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month, color: Color(0xFF00adb5),), label: 'Calendar'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  //search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFeeeeee),
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //how do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😞',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //fine
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //well
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //excellent
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😇',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color(0xFF393e46),
                child: Center(
                  child: Column(
                    children: [
                      //exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatPage())),
                              child: ExerciseTile(
                                icon: Icons.chat_bubble,
                                exerciseName: 'AI Chat',
                                numberOfExercises: 16,
                                color: Colors.orange,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage1())),
                              child: ExerciseTile(
                                icon: Icons.movie,
                                exerciseName: 'Movie Recommendation',
                                numberOfExercises: 8,
                                color: Colors.green,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgressPage())),
                              child: ExerciseTile(
                                icon: Icons.track_changes,
                                exerciseName: 'Habit Tracker',
                                numberOfExercises: 20,
                                color: Colors.pink,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChessPage())),
                              child: ExerciseTile(
                                icon: Icons.gamepad,
                                exerciseName: 'Play Games',
                                numberOfExercises: 20,
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
