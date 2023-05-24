import 'package:flutter/material.dart';

class DpwhatsApp extends StatefulWidget {
  const DpwhatsApp({Key? key}) : super(key: key);

  @override
  State<DpwhatsApp> createState() => _DpwhatsAppState();
}

class _DpwhatsAppState extends State<DpwhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile info ",style: TextStyle(color:
        Colors.teal,
            fontWeight: FontWeight.w700,
            fontSize: 18,
            wordSpacing: 1
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert,color: Colors.black),)
        ],
      ),
    body:  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("Please provide your name and an option profile photo",
              style: TextStyle(fontSize: 12,color: Colors.grey),),

        ],
      ),
    ),
    );
  }
}
