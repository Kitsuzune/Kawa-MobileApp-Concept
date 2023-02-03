import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const[
          Text('Camera Page', style: TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.camera_front_outlined, size: 120,),
          ),
          SizedBox(height: 100,),
          Text('Camera Page Content',
            style: TextStyle(fontSize: 30, color: Colors.white),),
        ],
      ),
    );
  }
}