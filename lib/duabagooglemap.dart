import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location2 extends StatefulWidget {
  const Location2({Key? key}) : super(key: key);

  @override
  State<Location2> createState() => _Location2State();
}

class _Location2State extends State<Location2> {

  String googleApikey = "AIzaSyCMzydBgkIhD0fupc0qgcrQ_If-Os8UQjg";
  GoogleMapController? mapController; //controller for Google map
  CameraPosition? cameraPosition;
  LatLng startLocation = LatLng(30.6972397, 76.6896764);
  String location = "Search Location";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  SizedBox.expand(
       child: DraggableScrollableSheet(
         builder: (BuildContext context, ScrollController scrollController) {
           return Container(
               color: Colors.blue[100],
               child: ListView.builder(
                 controller: scrollController, itemBuilder: (BuildContext context, int index) {
                 return ListTile(title: Text('user'));
               },
               )
           );
         }
       ),
     ),
     drawer: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: [
           UserAccountsDrawerHeader(
             accountName: Text("sujan Kapar"),
             accountEmail: Text("sujan.kapar@gmail.com"),
             decoration: BoxDecoration(
               color: Colors.blueGrey,
             ),
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage('assets/Image.jpeg'),
             ),
           ),
           ListTile(
             leading: Icon(Icons.history), title: Text("History"),
             onTap: () {},
           ),
           ListTile(
             leading: Icon(Icons.schedule_send), title: Text("Schedule order"),
             onTap: (){},
           ),
           ListTile(
             leading: Icon(Icons.contacts), title: Text("Privacy Polices"),
           ),
           ListTile(
             leading: Icon(Icons.contacts), title: Text("Term & Condition"),
             onTap: (){},
           ),
           ListTile(
             leading: Icon(Icons.price_change), title: Text("Miles Price"),
             onTap: (){},
           ),
           ListTile(
             leading: Icon(Icons.logout), title: Text("logout"),
             onTap: (){},
           ),
         ],
       ),
     ),

   );
       }
 }
