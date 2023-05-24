import 'package:flutter/material.dart';

class Emailconfirmation extends StatefulWidget {
  const Emailconfirmation({Key? key}) : super(key: key);

  @override
  State<Emailconfirmation> createState() => _EmailconfirmationState();
}

class _EmailconfirmationState extends State<Emailconfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50,left: 34),
          child: Image.asset("assets/Email.png"),
        ),
      ),
    );
  }
}
