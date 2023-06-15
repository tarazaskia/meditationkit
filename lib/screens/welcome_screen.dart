import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meditationkit/screens/home.screen.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: BoxDecoration(
                        color: Color(0xff0B483E),
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(70)),
                      ),
                      child: Center(
                          child: Image.asset(
                        "images/b.png",
                      )),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.666,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.666,
                      padding: EdgeInsets.only(top: 40, bottom: 30),
                      decoration: BoxDecoration(
                          color: Color(0xff219653),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(70))),
                      child: Column(
                        children: [
                          Text(
                            "Mediation",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              "Go find Your peace",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 17),
                              selectionColor: Colors.white.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(height: 60),
                          Material(
                            color: Color(0xffFEC265),
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 80),
                                child: Text(
                                  "Get Start",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}
