import 'package:first_project/Register.dart';
import 'package:first_project/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  String _token = '';

  @override
  void initState() {
    super.initState();
    _loadToken();
  }

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _token = prefs.getString('token') ?? '';
    });
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    setState(() {
      _token = token;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/Login.jpg'),fit: BoxFit.cover
    ),
    ),
          child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: SvgPicture.asset('assets/logo.svg',width: 300),
                ),
              ),
              Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 50,left: 15),
            child: Text('WelcomeBack!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
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
                    onPressed: () async {
                      //If Successfully Loged in (Creds are Correct)

                     // var sharedPref = await SharedPreferences.getInstance();
                      //sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                      addStringToSF() async {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString('stringValue', "abc");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.white)),
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
           ]),
    ),
    ),
    );
  }
}
