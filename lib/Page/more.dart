import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const[
          Text('More Option Page', style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.settings_accessibility_rounded, size: 120,),
          ),
          SizedBox(height: 100,),
          Text('More Option Page Content',
            style: TextStyle(fontSize: 30, color: Colors.white),),
        ],
      ),
    );
  }
}