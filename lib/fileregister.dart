import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool agree = false;
  void _doSomething(){}

  TextEditingController _firstController= new TextEditingController();
  TextEditingController _lastController= new TextEditingController();
  TextEditingController _emailController= new TextEditingController();
  TextEditingController _mobileController= new TextEditingController();
  TextEditingController _passController= new TextEditingController();
  TextEditingController _confirmpassController= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Register.jpeg'),fit: BoxFit.cover
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Colors.black, //change your color here
                ),
              ),
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    child: Text('Register',style: TextStyle(fontSize: 25,color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile No',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Comfirm Password',
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Material(
                            child: Checkbox(
                              value: agree,
                              onChanged: (value) {
                                setState(() {
                                  agree = value ?? false;
                                });
                              },
                            ),
                          ),
                          Text('I Accept all term & Conditions and privacy Polices',
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      ElevatedButton(onPressed: (){agree ? _doSomething : null;},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[600],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        child: const Text('Register',style: TextStyle(fontSize:
                        20,color: Colors.white),),

                      ),
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}