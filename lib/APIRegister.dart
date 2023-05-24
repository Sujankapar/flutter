import 'package:flutter/material.dart';
import 'APILOGIN.dart';
import 'Sign up request model.dart';
import 'package:http/http.dart'as http;
class ApIRegister extends StatefulWidget {
  const ApIRegister({Key? key}) : super(key: key);

  @override
  State<ApIRegister> createState() => _ApIRegisterState();
}

class _ApIRegisterState extends State<ApIRegister> {
  final emailController = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();

  register(String  email, contact, pass) async {
    var data = SignupRequest(deviceToken:"sdsad" , deviceType:"sadsda" , email:email ,password:pass , role: "1");
    print(data);

    // String body = json.encode(data);
    var url = Uri.parse('http://easy.deploywork.com:4360/app/auth/signup');
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
              Padding(padding: EdgeInsets.only(top:350,left:19 ),
                child: Text('Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 375,left: 19),
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
              Padding(padding: EdgeInsets.only(top:450,left:15 ),
                child: Text('Phone number',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 470,left: 15),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "phone number",
                      prefixIcon: const Icon(Icons.phone),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:540,left:15 ),
                child: Text('Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),),

              Padding(
                padding: const EdgeInsets.only(top: 570,left: 15),
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
                      onPressed: (){},
                      child: Text('Register'),
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
              Padding(padding: EdgeInsets.only(top:730,left: 50),
                child: Text("Already have account?" ,style: TextStyle(color: Colors.black,fontSize: 20),),),
              Padding(padding: EdgeInsets.only(top:730,left: 250),
                child: InkWell(
                  onTap: () => Navigator.pop(context,MaterialPageRoute(builder: (context) => ApiLogin())),
                  child: const Text(
                    'Login?',
                    style: TextStyle(fontSize: 20
                      ,color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),)
            ]
        ),
      ),
    );
  }
}
