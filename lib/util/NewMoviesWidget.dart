import 'package:flutter/material.dart';
import 'package:mental_health/pages/MoviePage.dart';

class NewMoviesWidget extends StatelessWidget {
  const NewMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "New Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "See All",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
            ],
          )),
      SizedBox(height: 15),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for(int i=1;i<11;i++)
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoviePage())),
              child: Container(
                width: 190,
                height: 300,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "assets/$i.jpeg",
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("New Movies",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500 ,
                              fontSize: 21,
                        ),
                        ),
                          SizedBox(height: 5),
                          const Text("Action/Adventure",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 21,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Row(children: const [
                            Icon(Icons.star,color: Colors.amber,
                            ),
                            SizedBox(width: 5),
                            Text("8.5",style: TextStyle(color: Colors.white54,fontSize: 16),)
                          ],)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
