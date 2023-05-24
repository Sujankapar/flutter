import 'package:first_project/whatsAppnumber.dart';
import 'package:flutter/material.dart';

class WhatsappSecond extends StatefulWidget {
  const WhatsappSecond({Key? key}) : super(key: key);

  @override
  State<WhatsappSecond> createState() => _WhatsappSecondState();
}

class _WhatsappSecondState extends State<WhatsappSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 80),
              child: Image.asset("assets/whatsapp.jpeg"),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 50,left: 15),
            child: Text("Welcome to WhatsApp",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
          ),
          Padding(padding: EdgeInsets.all(30.0),
          child: Text('Ready our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service',style: TextStyle(fontSize: 14,color: Colors.grey)
          ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneNumber()),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child:  Text("Agree and Continue"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
