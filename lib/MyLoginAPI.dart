import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Login request model.dart';
import 'SplashScreen.dart';
class MyLoginApi extends StatefulWidget {
  const MyLoginApi({Key? key}) : super(key: key);

  @override
  State<MyLoginApi> createState() => _MyLoginApiState();
}

class _MyLoginApiState extends State<MyLoginApi> {

  Dio dio = Dio();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController deviceType = TextEditingController();
  TextEditingController deviceToken = TextEditingController();
  TextEditingController role = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextField(controller: email,
              decoration: InputDecoration(hintText: "email"),),
            SizedBox(
              height: 2,
            ),
            TextField(controller: password,
              decoration: InputDecoration(hintText: "password"),),
            SizedBox(
              height: 2,
            ),

            TextField(controller: deviceType,
              decoration: InputDecoration(hintText: "deviceType"),),
            SizedBox(
              height: 2,
            ),
            TextField(controller: deviceToken,
              decoration: InputDecoration(hintText: "deviceToken"),),
            SizedBox(
              height: 2,
            ),
            TextField(controller: role,
              decoration: InputDecoration(hintText: "role"),),
            ElevatedButton(onPressed: () {
              postLoginapi();
            }, child: Text('Login'))
          ],

        ),
      ),
    );
  }
  Future postLoginapi()async{
    var pref = await SharedPreferences.getInstance();
    try {
      var response= await dio.post("http://duaba.co.uk:95/api/v1/auth/login",
          data:LoginRequest(
            email: email.text,
            password: password.text,
            deviceToken: deviceToken.text,
            deviceType: deviceType.text,
            role: role.text,
          ),
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          )
      );
      print(response.data);
      var tokenGet = await pref.setString(SplashScreenState.tokenkeyValue,response.data["body"]["token"]);
      print("token get ${tokenGet}");
      return response;
    }catch(e){
      print(e.toString());
    }
    return null;
  }
}

