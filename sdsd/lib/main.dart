import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'anasayfa.dart';
import 'dart:async';
void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp())
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Anasayfa()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientation ,devicedType){
      return Scaffold(
        backgroundColor: Colors.black,
        body:  Padding(
          padding: const EdgeInsets.only(left: 100,top: 175, bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Horse.png"),
                        fit: BoxFit.contain)

                ),

              ),
              Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/medyagon.jpg"),
                            fit: BoxFit.contain)

                    ),

                  ),
                ],
              )

            ],
          ),
        ),

      );
    });
  }
}