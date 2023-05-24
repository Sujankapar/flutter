import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WhatsAppverification extends StatefulWidget {
  const WhatsAppverification({Key? key}) : super(key: key);

  @override
  State<WhatsAppverification> createState() => _WhatsAppverificationState();
}

class _WhatsAppverificationState extends State<WhatsAppverification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(200),
                ),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20,top: 50.0),
                        child: Text('Verification',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(7.0, 25.0, 7.0, 12.0),
                    child: Text('Please enter verification Code sent to your email account',style: TextStyle(fontSize: 20,color: Colors.grey),
                    ),
                  ),
                  Padding(padding:EdgeInsets.fromLTRB(7,25,7,12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 44,
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length ==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1) {},
                            decoration: InputDecoration(hintText: "0"),
                            style: Theme.of(context).textTheme.headline2,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
                    child: Row(
                      children: [
                        Text("Didn't received code?"),
                        TextButton(onPressed: (){
                        },
                            child: Text('ResendCode',style: TextStyle(fontSize: 20,color: Colors.orangeAccent,decoration: TextDecoration.underline),))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
