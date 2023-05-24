import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectPage extends StatefulWidget {
  @override
  _ShimmerEffectPageState createState() => _ShimmerEffectPageState();
}

class _ShimmerEffectPageState extends State<ShimmerEffectPage> {
  bool enable = false;

  @override
  void initState(){
    super.initState();
  }
  loadData()async{
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      enable = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer demo'),
      ),
      body: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    child:
                    ListView.builder(itemBuilder: (context, index){
                      if(enable){
                        return Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          enabled: enable,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                            backgroundColor: Colors.red,
                            ),
                            title: Container(
                              color: Colors.white,
                              height: 10,
                              width: 100,
                            ),
                            subtitle: Container(
                              color: Colors.white,
                              height: 10,
                              width: 100,
                            ),
                          ),
                        );
                      }else{
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                          backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                          ),
                          title: Container(
                            height: 15,
                            width: 100,
                            child: Text("jgjdwhbdebdkebdkedkedbekdbkbk"),
                          ),
                          subtitle: Container(
                            height: 15,
                            width: 100,
                            child: Text("jegdjejdegdgedhhdgdgddtfffutfh"),
                          ),
                        );
                      }
                    }),
                ),
              ],
            ),
    );
  }
}