import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const[
          Text('Stats Page', style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.query_stats_rounded, size: 120,),
          ),
          SizedBox(height: 100,),
          Text('Stats Page Content',
            style: TextStyle(fontSize: 30, color: Colors.white),),
        ],
      ),
    );
  }
}