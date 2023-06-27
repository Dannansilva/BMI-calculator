import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 70;
  String gender = '';

  late double bmi = calculateBMI(height: height, weight: weight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                 Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                        print ("m");
                        setState(() {
                          gender='m';
                        });
                      },
                      child: Container(
                        width: 175 ,
                        height: 210 ,
                        decoration: BoxDecoration(
                          color: gender =='m'? Colors.orange.withAlpha(170):Colors.orange.withAlpha(70),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        
                        padding: EdgeInsets.all(8.0),
                        child: const Column(
                          children: [
                            Icon(Icons.male, size: 120),
                            Text("Male"),
                          ],
                        ),
                      ),
                    ),
                   const  Spacer(),
                    GestureDetector( onTap: () {
                        
                        print ("f");
                        setState(() {
                          gender='f';
                        });
                      },
                      child: Container(
                         width: 175 ,
                         height: 200,
                       decoration: BoxDecoration(
                          color: gender =='m'? Colors.orange.withAlpha(170):Colors.orange.withAlpha(70),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child:const  Column(
                          children: [
                            Icon(Icons.female, size: 130 ),
                            Text("Female"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text("Height"),
                          Text(
                            "$height",
                            style: kInputlabelcolor,
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (height > 50) height--;
                                    bmi = calculateBMI(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (height < 220) height++;
                                    bmi = calculateBMI(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text("weight"),
                          Text(
                            "$weight",
                            style: kInputlabelcolor,
                          ),
                          Row(
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 30) weight--;
                                    bmi = calculateBMI(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight < 220) weight++;
                                    bmi = calculateBMI(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
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
                const SizedBox(height: 60),
                Column(
                  children: [
                    const Text("BMI"),
                    Text(bmi.toStringAsFixed(2), style: kInputlabelcolor),
                    Text(getResult(bmi))
                  ],
                )
              ],
            )),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }
   String getResult(bmivalue){
    if(bmivalue >=25){
      return 'Overweright';
    }else if (bmivalue>18.5){
      return 'normal';
    }else {
      return 'underweight';
    }
  }
}
