import 'package:flutter/material.dart';
import 'Onboarding3.dart';
import 'Screen.dart';
import 'onboarding1.dart';

class PageView extends StatefulWidget {
  const PageView({Key? key}) : super(key: key);

  @override
  State<PageView> createState() => _PageViewState();
}

class _PageViewState extends State<PageView> {

  @override
  int currentIndex = 0;
  PageController _controller = PageController();

  List<Widget> _pages =[
    Onboarding(),
    Onboarding1(),
    Onboarding2(),
  ];

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child:PageView(

            ),
          ),
        )
    );
  }
}
