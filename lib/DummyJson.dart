import 'dart:convert';
import 'package:flutter/material.dart';
import 'jsondata.dart';
class Dummyjson extends StatefulWidget {
  const Dummyjson({Key? key}) : super(key: key);

  @override
  State<Dummyjson> createState() => _DummyjsonState();
}

class _DummyjsonState extends State<Dummyjson> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /// backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('json'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: ( BuildContext context, int index) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text('${jsonEncode(Dummy.forms[0]["data"]["bidder"][index]["label"])}',
                style: TextStyle(fontSize: 20,color: Colors.blue),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('${jsonEncode(Dummy.forms[0]["options"]["options"][index])}',
                style: TextStyle(fontSize: 20,color: Colors.blue),
              ),
            ),
          ],
        );
      },
       ),
    );
  }
}
