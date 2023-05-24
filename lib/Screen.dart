
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  void initState() {
    FirebaseMessaging.instance.getToken().then((newToken){
      //print("FCM token");
      print("FCM token:$newToken");
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          child:
          Container(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text('Skip',style: TextStyle(fontSize: 20,color: Colors.black),
                        ),
                      ),
                    ]
                ),
                Image(
                    width: 700, height: 522,
                    image: AssetImage('assets/onboarding1.jpeg')
                ),
                Text("Live tracking of your Food or Groceries",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(30),
                  child: Text("Lorem ipsum dolor sit amet,consectetur adipising elit mauris sed",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 400,
                  height: 70,
                  color: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(),
                          onPressed: (){

                          },
                          child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
