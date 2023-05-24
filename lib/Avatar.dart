import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'SocialAPI.dart';

class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  SocialAppList? dataFromAPI;

  _getData() async {
    try {
      String url =
          "http://asocial.deploywork.com:4359/api/v1/auth/intrests-list";
      var res = await http.get(Uri.parse(url));
      dataFromAPI = SocialAppList.fromJson(json.decode(res.body));
      if (res.statusCode == 200) {
        dataFromAPI = SocialAppList.fromJson(json.decode(res.body));
        _isLoading = false;
        setState(() {
          print('success----->>>>${dataFromAPI?.body?.length}');
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffff99b6),Color(0xffdd5ce9)]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: 120),
          child: Container(
            height: double.infinity,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50), topLeft: Radius.circular(50)
                )
            ),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(left:10,top: 40),
                      child: Text(
                        'Your Interests',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 100, 5),
                      child: Text(
                        'Pick up to 5 things you Love.',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${dataFromAPI?.body?[index].name}",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 3,
                                  childAspectRatio: (5 / 2),
                                ),
                                itemCount: dataFromAPI!.body?[index].intrestList?.length ?? 0,
                                itemBuilder: (BuildContext context, int i) {
                                  return InkWell(
                                    onTap: (){
                                      setState(() {
                                        print('isselected');
                                        if(dataFromAPI?.body?[index].intrestList?[i].isSelected == true){
                                          dataFromAPI?.body?[index].intrestList?[i].isSelected = false;
                                        }else{
                                          dataFromAPI?.body?[index].intrestList?[i].isSelected = true;
                                        }
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(3),
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                       gradient: dataFromAPI?.body?[index].intrestList?[i].isSelected == true?LinearGradient(
                                           colors: [Color(0xffff99b6),Color(0xffdd5ce9)])
                                  :LinearGradient(
                                           colors: [Color(0xffe5dde6),Color(0xffe5dde6)])
                                       ),
                                      child: Center(
                                        child: Text("${dataFromAPI?.body?[index].intrestList?[i].name}",
                                        style: TextStyle(fontSize: 15)
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                            index != ((dataFromAPI?.body?.length ?? 0) - 1)
                                ? Divider(height: 40, color: Colors.grey[200], thickness: 5, endIndent: 1,) : SizedBox.shrink(),
                          ],
                        );
                      },
                      itemCount: dataFromAPI!.body?.length,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 60,right:10),
                        child: Container(
                          height:1,
                          width: 90,
                          color: Colors.grey.shade300,
                        ),
                        ),
                        Text('OR',style: TextStyle(fontSize: 20),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right:50),
                          child: Container(
                            height:1,
                            width: 90,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 25,bottom: 50),
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.pink.shade300)
                          )
                        ),
                        onPressed: (){},
                        child: Text('Enter your own',style: TextStyle(fontSize: 20,color: Colors.pink.shade300),),
                      ),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 50),
                      child: SizedBox(
                        width: 300,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(20),),
                            ),
                            onPressed: () {},
                            child:Text('Next',style: TextStyle(fontSize: 20,color: Colors.white),)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
