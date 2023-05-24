import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'APIRegister.dart';
import 'Login request model.dart';


class ApiLogin extends StatefulWidget {
  const ApiLogin({Key? key}) : super(key: key);

  @override
  State<ApiLogin> createState() => _ApiLoginState();
}

class _ApiLoginState extends State<ApiLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  register(String  email, contact, pass) async {
    var data = LoginRequest( email:email ,password:pass );
    print(data);

    // String body = json.encode(data);
    var url = Uri.parse('http://easy.deploywork.com:4360/app/auth/login');
    var response = await http.post(
      url,
      body: data.toJson(),
      headers: {
        "accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      },
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print('success');
    } else {
      print('error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Stack(
            children: [
              Padding(padding: EdgeInsets.only(top:50,left: 34),
                child:Image.asset('assets/Vector.png',),),
              Padding(padding: EdgeInsets.only(top: 260),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(padding: EdgeInsets.only(top: 50,left: 120),
                        child: Text('Log In',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                  )

              ),
              Padding(padding: EdgeInsets.only(top:400,left:19 ),
                child: Text('Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 440,left: 19),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "mailto:hello@gmail.com",
                      prefixIcon: const Icon(Icons.mail_outline),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                  ),

                ),
              ),

              Padding(padding: EdgeInsets.only(top:520,left:15 ),
                child: Text('Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 550,left: 15),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(top: 650,left: 30),
                  child: SizedBox(
                    height: 60,
                    width: 330,
                    child: ElevatedButton(
                      onPressed: (){
                      },
                      child: Text('Login'),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),

                        ),
                      ),
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(top:730,left: 100),
                child: Text('Forgot your Password?',style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.only(top:740,left: 70),
                child:  Row(
                  children: <Widget>[
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 20,color: Colors.blue,decoration: TextDecoration.underline),
                      ),
                      onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ApIRegister()));

                        //signup screen
                      },
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
