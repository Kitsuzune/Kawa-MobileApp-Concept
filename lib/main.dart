import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kawa/Page/call.dart';
import 'package:kawa/Page/camera.dart';
import 'package:kawa/Page/map.dart';
import 'package:kawa/Page/more.dart';
import 'package:kawa/Page/stats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final items = const [
    Icon(Icons.call, size: 30),
    Icon(Icons.camera_alt, size: 30),
    Icon(Icons.map, size: 30),
    Icon(Icons.stacked_line_chart, size: 30),
    Icon(Icons.settings, size: 30)
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Call();
        break;
      case 1:
        widget = const Camera();
        break;
      case 3:
        widget = const Stats();
        break;
      case 4:
        widget = const More();
        break;
      default:
        widget = const Maps();
        break;
    }
    return widget;
  }
}