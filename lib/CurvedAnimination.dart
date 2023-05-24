import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animination',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(minutes: 1));
    animation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value.toString(),);
      });
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      }
      else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.forward();
  }
  @ override
  Widget build(BuildContext context){
    return Center(
      child: AnimatedLogo(
        animation: animation,
      ),
    );
  }
}
class AnimatedLogo extends AnimatedWidget {
  final Tween<double> _sizeAnimation = Tween<double>(begin: 0.0, end: 500.0);

  AnimatedLogo({Key? key, required Animation animation})
      :super(key: key, listenable: animation);

  Animation<double>? get controller => null;

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = Tween<double>(begin: 0.0, end: 500.0).animate(controller!);
    return Transform.scale(
      scale: _sizeAnimation.evaluate(animation),
      child: FlutterLogo(),
    );
  }
}

