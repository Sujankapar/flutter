import 'package:first_project/Verification%20code.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


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
  TextEditingController _passwordController= new TextEditingController();
  TextEditingController _confirmpasswordController= new TextEditingController();
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
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    transform: GradientRotation(52),
                    begin: FractionalOffset(0.5, 1.0),
                    end: FractionalOffset(0.75,0.55),
                    colors: [Colors.orangeAccent],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(70),
                      ),
                      color: Colors.white70.withOpacity(0.4),
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20,left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back),
                              ),
                            )
                          ],
                        ),
                        ),
                       Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20,top: 40.0),
                                child: Text('Register',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                              ),
                              ]
                          ),
                        Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                        child: TextField(
                          controller: _firstController,
                          style: TextStyle(fontSize: 15.0,height: 1.0,),
                          decoration: InputDecoration(
                            hintText: '  First Name',
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              ),
                            border: OutlineInputBorder(
                            ),
                          ),
                        ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                          child: TextField(
                            controller: _lastController,
                            style: TextStyle(fontSize: 15.0,height: 1.0,),
                            decoration: InputDecoration(
                              hintText: '  Last Name',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  ),
                              border: OutlineInputBorder(
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                          child: TextField(
                            controller: _emailController,
                            style: TextStyle(fontSize: 15.0,height: 1.0,),
                            decoration: InputDecoration(
                              hintText: '  E-mail',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  ),
                              border: OutlineInputBorder(
                              ),
                            ),
                          ),
                        ),
                       Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                         child: IntlPhoneField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderSide: BorderSide(),
                             ),
                             contentPadding: EdgeInsets.fromLTRB(10,3,0,3),
                             hintText: 'Mobile Number',
                           ),
                           initialCountryCode: 'IN',
                           onChanged: (phone){
                             print(phone.completeNumber);
                           },
                         ),
                       ),
                        Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                          child: TextField(
                            controller: _passwordController,
                            style: TextStyle(fontSize: 15.0,height: 1.0,),
                            decoration: InputDecoration(
                              hintText: '  Password',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  ),
                              border: OutlineInputBorder(
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                          child: TextField(
                            controller: _confirmpasswordController,
                            style: TextStyle(fontSize: 15.0,height: 1.0,),
                            decoration: InputDecoration(
                              hintText: '  Confirm Password',
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                              ),
                              border: OutlineInputBorder(
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 5),
                                Material(
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Colors.black,
                                    value: agree,
                                    onChanged: (value) {
                                      setState(() {
                                        agree = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                                Text('I Accept all Term & Condition and Privacy polices',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              width:  250,
                                height: 70,
                            child: ElevatedButton(onPressed: (){agree ? _doSomething : null;Navigator.of(context).push(MaterialPageRoute(builder: (builder) =>VerificationCode()));

                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                              ),
                              child: const Text('Register',style: TextStyle(fontSize:
                              20,color: Colors.white),),
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    ),
    );
  }
}
