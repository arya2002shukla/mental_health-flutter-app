// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health/pages/progressPage.dart';
import 'package:mental_health/util/exercise_tile.dart';
import 'package:mental_health/util/exercise_tile2.dart';


import '../services.dart/chartsBuilder.dart';

class Habitspage extends StatefulWidget {
  const Habitspage({Key? key}) : super(key: key);

  @override
  State<Habitspage> createState() => _HabitspageState();
}

class _HabitspageState extends State<Habitspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222831),
      body: SafeArea(
          child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(children: [
                    Image.asset('assets/HabitsPageBackground.png'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 140, 0, 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text(
                            "Your Habits",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Use this to be inspired",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ]),
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                height: 470,
                child: ListView(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 200,
                      child: LineChartSample1(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: LineChartSample2(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: LineChartSample3(),
                    )
                  ],
                ),
              ),

            // SizedBox(
            //   height: 30,
            // ),

            // ExerciseTile2(
            //     text: "Progress Tracker",
            //     onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgressPage())),
            //   ),

            ]),
        ),
    );
  }
}
