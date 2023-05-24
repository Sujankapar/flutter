
import 'package:flutter/material.dart';

class MyHomeScreenPage extends StatefulWidget{

  const MyHomeScreenPage ({super.key, required this.title});


  final String title;
  @override

  _MyHomeScreenPage createState() => _MyHomeScreenPage();
}
class _MyHomeScreenPage extends State<MyHomeScreenPage>{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: (){},
                    child: Text('skip',style: TextStyle(fontSize: 20,color: Colors.cyan),
                    ),
                  ),
                ],
              ),
              Image
                (width: 250,height: 400,
                  image: AssetImage('assets/onboarding1.jpeg')
              ),
              Text("Live tracking of your Food or Groceries",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet,consectetur adipising elit mauris sed",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 300,
                height: 70,
                color: Colors.orangeAccent.withOpacity(0.80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {}, child: Text('Skip',style: TextStyle(fontSize: 20,color: Colors.cyan),
                    ),
                    ),
                  ],
                ),
              ),
              Image
                (width: 250,height: 400,
                image: AssetImage('assets/onboarding2.jpeg'),
              ),
              Text("Delivered Your Food or Groceries On Time",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit mauris sed",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 300,
                height: 70,
                color: Colors.orangeAccent.withOpacity(0.80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.black
                      ),
                      onPressed: () {},
                      child: Text('Skip',style: TextStyle(fontSize: 20,color: Colors.cyan),
                      ),
                    ),
                  ],
                ),
              ),
              Image
                (width: 250,height: 400,
                image: AssetImage('assets/onboarding3.jpeg'),
              ),
              Text("Your Order is 100% Secure",
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit mauris sed",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}