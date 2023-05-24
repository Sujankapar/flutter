import 'package:first_project/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   final appTitle = "Flutter Form Demo";
    MaterialApp(
     title: appTitle,
     home: Scaffold(
       appBar: AppBar(
         title: Text(appTitle),
       ),
     ),
   );
   return Form(
     key: _formKey,

     child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           TextFormField(
             decoration: const InputDecoration(
               icon: const Icon(Icons.phone),
               hintText: 'Enter a phone number',
               labelText: 'Phone',
             ),
           ),
           TextFormField(
             decoration: const InputDecoration(
               icon: const Icon(Icons.calendar_today),
               hintText: 'Enter your date of birth',
               labelText: 'Dob',
             ),
           ),
           new Container(
               padding: const EdgeInsets.only(left: 150.0, top: 40.0),
               child: ElevatedButton(
                 child: const Text('Submit'),
                 onPressed: null,
               )),
         ],
       ),
   );
  }
}
//Create a Form Widget.
