import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.white,
            child: const Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 120),
                          Text("Male"),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.female, size: 120),
                          Text("Female"),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Height"),
                          Text(
                            "176",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.remove,
                                  size: 50,
                                ),
                              ),
                               SizedBox(width: 25,),
                               FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.add,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                     Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("weight"),
                          Text(
                            "76",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.remove,
                                  size: 50,
                                ),
                              ),
                               SizedBox(width: 25,),
                               FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.add,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [Text("BMI"),Text("22.00"),],
                )
              ],
            )),
      ),
    );
  }
}
