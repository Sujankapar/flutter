import 'package:flutter/material.dart';

class Silverscrollview extends StatefulWidget {
  const Silverscrollview({Key? key}) : super(key: key);

  @override
  State<Silverscrollview> createState() => _SilverscrollviewState();
}

class _SilverscrollviewState extends State<Silverscrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScrollView(
       slivers: [
       SliverAppBar(
         actions: [
           Icon(Icons.camera_front, size: 40,)
         ],
         title: Text("SliverGrid Example"),
         leading: Icon(Icons.menu),
         backgroundColor: Colors.green,
           expandedHeight: 100.0,
           floating: true,
           pinned: true,
       ),
         SliverGrid(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 4,
           ) ,
             delegate: SliverChildBuilderDelegate((BuildContext context, int index){
              return  new Container(
                color: _randomPaint(index),
                  height: 150.0
              );
             }
             ),
         )
    ],
     ),
    );
    }
  }
Color _randomPaint(int index) {
  if (index % 3 == 0) {
    return Colors.orange;
  } else if (index % 3 == 1) {
    return Colors.blue;
  }
  return Colors.red;
}
