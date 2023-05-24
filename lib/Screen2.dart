import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'app_routes.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Get.toNamed(Routes.APILOGIN),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blueAccent
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Center(
                child: Column(
                    children: [
                      Image.asset(
                        "assets/Screen.png",
                        height: 250.0,
                        width: 250.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text("EASY-V",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                      )
                    ]
                ),
              ),
              CircularProgressIndicator(
                valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
