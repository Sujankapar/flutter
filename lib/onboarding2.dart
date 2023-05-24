import 'package:flutter/material.dart';
import 'Login.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();

}
class _OnBoarding2State extends State<OnBoarding2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: PageView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            onPageChanged: (index){
             setState(() {
               currentIndex = index;
               print("index---->>>${currentIndex}");
             }
             );
            },
            children: [
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
                        image: AssetImage('assets/onboarding2.jpeg')
                    ),
                    Text("Delivered Your Food or Groceries On Time",
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
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(),
                              onPressed: (){},
                              child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                        image: AssetImage('assets/onboarding3.jpeg')
                    ),
                    Text("Your Order is 100% Secure",
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
                      color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(),
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()),);
                              },
                              child: Text("GETSTART",style: TextStyle(fontSize: 20,color: Colors.white),
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
