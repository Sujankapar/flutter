import 'dart:io';
import 'package:first_project/whatsapp%20verification%20code.dart';
import 'package:flutter/material.dart';
import 'Country.dart';
import 'CountryModel.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String Countryname = "India";
  String Countrycode = "+91";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text("Enter Your Phone Number",style: TextStyle(color:
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
                Text("WhatsApp will need to verify your phone number.",
                  style: TextStyle(fontSize: 12,color: Colors.grey),),
                SizedBox(height: 5,),
                Text("Whats my number?",style: TextStyle(fontSize: 12,color: Colors.cyan),
                ),
                SizedBox(
                  height: 15,
                ),
                countryCard(),
                SizedBox(height: 15,),
                number(),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Carrier charges may apply",style: TextStyle(fontSize: 15,color: Colors.cyan),),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 450
                  ),
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder) =>WhatsAppverification()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Next",style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                )
              ],
            ),
          )
    );
  }
  Widget countryCard(){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute
          (builder: (context)=> CountryPage(setCountryData: setCountryData)),);
      },
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: Colors.teal,
            width: 1.8,
          )
          ),
        ),
        child: Row(
          children: [
            Expanded(
        child:Container(
            child:Center(
              child: Text(Countryname,style: TextStyle(fontSize: 16)
            ),
            ),
            ),
            ),
           Icon(Icons.arrow_drop_down,color: Colors.teal,)
          ],
        ),
      ),
    );
  }
  Widget number(){
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      height: 38,
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.8,
                )
              )
            ),
            child: Row(
              children: [
                Text("+",style: TextStyle(fontSize: 18)
                ),
                SizedBox(
                  width: 15,
                ),
                Text(Countrycode.substring(1)
                  ,style: TextStyle(fontSize: 18),),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.8,
                )
              )
            ),
            width: MediaQuery.of(context).size.width/1.5-100,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
  void setCountryData(CountryModel countryModel){
    setState(() {
      Countryname = countryModel.name;
      Countrycode = countryModel.code;
    });
    Navigator.pop(context);
  }
}
