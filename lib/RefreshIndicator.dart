import 'package:flutter/material.dart';

class Refreshindicator extends StatefulWidget {
  const Refreshindicator({Key? key}) : super(key: key);

  @override
  State<Refreshindicator> createState() => _RefreshindicatorState();
}

class _RefreshindicatorState extends State<Refreshindicator> {

  List<dynamic> listOfStories = [
    {'name':'sujan','imagepath':'android.jpeg'},
    {'name':'sakshi','imagepath':'banner.jpeg'},
    {'name':'vilo','imagepath':'google.jpeg'},
    {'name':'tavish','imagepath':'Image.jpeg'},
    {'name':'sashimi','imagepath':'location.jpg'},
    {'name':'bikash','imagepath':'login.png'},
    {'name':'alamgir','imagepath':'onboarding1.jpeg'},
  ];
  int itemCount = 2;
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: RefreshIndicator(
          displacement: 50,
          backgroundColor: Colors.white,
          strokeWidth: 3,
          triggerMode: RefreshIndicatorTriggerMode.onEdge,
          onRefresh: () async{
            await Future.delayed(Duration(milliseconds: 1500));
            setState(() {
              itemCount = itemCount +1;
            });
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Refreshindicator'),
              backgroundColor: Colors.blue,
            ),
            body: _buildCardDesign(),
          ),
        )
    );
  }
  Widget _buildCardDesign(){
    return Container(
      margin: EdgeInsets.all(5),
      child: ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Container(
                 padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                     child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(40.0),
                           child: Image.asset('assets/${listOfStories[index]['imgPath']}',
                           height: 48,
                             width: 48,
                             fit: BoxFit.cover,
                           ),
                         ),
                         Container(
                           padding: EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                           child: Text(
                           listOfStories[index]['name'],
                             style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16),
                           ),
                         ),
                               Container(
                                 padding: EdgeInsets.only(top: 5),
                                 child: Text(
                                   "wild animals",
                                   style: TextStyle(color: Colors.black, fontSize: 15),
                                 ),
                               ),
                               Container(
                                 padding: EdgeInsets.only(top: 5),
                                 child: Text(
                                   "Goldens look photo-ready no matter what.",
                                   style: TextStyle(color: Colors.black, fontSize: 11),
                                 ),
                               ),
                             ],
                           ),
                         ),

                       ],
              ),
              ),
            ),
          );
        },
      ),
    );
  }
}
