import 'package:flutter/material.dart';

class callEmergency extends StatelessWidget {
  
  final String CallEmergency;

  const callEmergency({
    Key? key,
    required this.CallEmergency,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          CallEmergency,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
