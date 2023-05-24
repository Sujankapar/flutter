import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  State<MySignup> createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {


  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobile_number = TextEditingController();
  TextEditingController country_code = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController deviceType = TextEditingController();
  TextEditingController deviceToken = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(


          children: [
            TextField(controller:firstname,decoration: InputDecoration(hintText: "firstname"),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:lastname,decoration: InputDecoration(hintText:"lastname" ),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:mobile_number,decoration: InputDecoration(hintText:"mobile_number" ),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:country_code,decoration: InputDecoration(hintText:"country_code" ),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:email,decoration: InputDecoration(hintText:"email" ),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:password,decoration: InputDecoration(hintText: "password"),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:deviceType,decoration: InputDecoration(hintText:"deviceType" ),),
            SizedBox(

              height: 2,
            ),
            TextField(controller:deviceToken,decoration: InputDecoration(hintText:"deviceToken" ),),
            SizedBox(

              height: 2,
            ),
            ElevatedButton(onPressed:(){
              registerUser();
            }, child: Text('Register'))
          ],
        ),
      ),
    );
  }
  void registerUser()async{
    print("first name  ${firstname.text}");
    var url= "http://duaba.co.uk:95/api/v1/auth/customersignUp";
    var data = {
      "firstname":firstname.text,
      "lastname":lastname.text,
      "email":email.text,
      "password":password.text,
      "mobile_number":mobile_number.text,
      "country_code":country_code.text,
      "deviceType":deviceType.text,
      "deviceToken":deviceToken.text,

    };
    var body=json.encode(data);
    var urlParse = Uri.parse(url);
    http.Response response = await http.post(
      urlParse,
      body:data,

    );
    var dataa=jsonDecode(response.body);
    print(dataa);

  }
}
