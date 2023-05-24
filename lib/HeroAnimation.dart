import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hero Animtion',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimationHero(title: 'Flutter Hero Animation ',),
    );
  }
}
class AnimationHero extends StatefulWidget {
  const AnimationHero({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<AnimationHero> createState() => _AnimationHeroState();
}

class _AnimationHeroState extends State<AnimationHero> {
  @override
  Widget _greenRectangle() {
    return Container(
      width: 75,
      height: 75,
      color: Colors.green,
    );
  }
  Widget  _detailPageRectangle() {
    return Container(
      width: 150,
      height: 150,
      color: Colors.red,
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildDemoWidget (context),
    );
  }

  buildDemoWidget(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'hero-rectangle',
                child: _greenRectangle(),
              ),
              onTap: () => _gotoDetailsPage(context),
            ),
            title: Text('Tap on the green icon rectangle to analyse hero animation transition.'),
          ),
        ],
      ),
    );
  }
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'hero-rectangle',
                  child: _detailPageRectangle(),
                ),
                Text('This is a place where you can see details about the icon tapped at previous page.')
              ],
            ),
          ),
        )));
  }
}
