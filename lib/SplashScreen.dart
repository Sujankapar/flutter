import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'DuabaMap.dart';
import 'loginsharedscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static String tokenkeyValue = "token";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/sujan.jpeg')
            ],
          ),
        ),
      ),
    );
  }
  void getValue()async{
    var pref = await SharedPreferences.getInstance();
    var isToken = pref.getString("token");
    print("isToken:$isToken");
    if(isToken != null){
      Timer(
          Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) => Location1()
              )
          )
      );
    }else{
      Timer(
          Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) => Loginsharedscreen()
              )
          )
      );
    }
  }
  }


