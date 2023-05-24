import 'package:flutter/material.dart';
class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
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
                      image: AssetImage('assets/onboarding3.jpeg')
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
    )
    );
  }
}
