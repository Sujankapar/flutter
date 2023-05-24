import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Autogenerated.dart';

class MyNewClass extends StatefulWidget {
  const MyNewClass({Key? key}) : super(key: key);

  @override
  State<MyNewClass> createState() => _MyNewClassState();
}

class _MyNewClassState extends State<MyNewClass> {
  List<Body> mylist = [];
  @override
  void initState() {
    getMyDetails();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.pink.shade100,
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: getConnectors.body?.length??0,
                  itemBuilder:(context, index){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                if(mylist.any((element) => element.id==getConnectors.body![index].id)){
                                  mylist.removeWhere((element) => element.id==getConnectors.body![index].id);
                                }else{
                                  mylist.add(getConnectors.body![index]);
                                }
                              });
                              print("ID--${getConnectors.body?[index].id}");
                              print("STATUS--${getConnectors.body?[index].status}");
                            },
                            child: Text("${getConnectors.body?[index].name}"
                              ,style: TextStyle(fontSize: 20,
                                color: mylist.any((element) => element.id==getConnectors.body![index].id) ? Colors.blue : Colors.grey,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  }
              ),
              SizedBox(
                height: 50,
              ),
              mylist.isNotEmpty?ListView.builder(
                shrinkWrap: true,
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  return  Text("${mylist[index].name}"
                    ,style: TextStyle(fontSize: 20),
                  );
                },):SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
  var token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7ImlkIjo5LCJlbWFpbCI6Im1hbm9qQHlvcG1haWwuY29tIn0sImlhdCI6MTY4MjQwNDY1NCwiZXhwIjoxNjg0OTk2NjU0fQ.zucLrreHiG-c00ZucqNJolj5w6vXjUGPXuEERy9qAl0";
  GetConnectors getConnectors =GetConnectors();
  Future<void> getMyDetails() async {
    var response = await Dio().get('http://easyv.deploywork.com:4360/app/station/getConnectors',
        options: Options(
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept': 'application/json',
              'Authorization': 'Bearer $token',
            }
        )
    );
    getConnectors = GetConnectors.fromJson(response.data);
    if(getConnectors.code == 200){
      print("SUCCESS:::${response.data}"
      );
    }else{
      print("NO SUCCESS");
    }
  }
}
