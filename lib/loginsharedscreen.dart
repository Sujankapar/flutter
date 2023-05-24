import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Register.dart';

class Loginsharedscreen extends StatefulWidget {
  const Loginsharedscreen({Key? key}) : super(key: key);

  @override
  State<Loginsharedscreen> createState() => _LoginsharedscreenState();
}

class _LoginsharedscreenState extends State<Loginsharedscreen> {



  @override
    Widget build(BuildContext context) {
      return SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Login.jpg'),fit: BoxFit.cover,
              )
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Container(
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 50,left: 15),
                    child: Text('WelcomeBack!',style: TextStyle(fontSize: 25,color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'password',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text('Forgot Password?',textAlign: TextAlign.start),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.white)),
                      onPressed: () async{

                      },
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                    child:  Row(
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 20,color: Colors.orange,decoration: TextDecoration.underline),
                          ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()),);

                            //signup screen
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      );
    }

  }
