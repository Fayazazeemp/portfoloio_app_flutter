import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {

  final IconData iconName;
  final String subtitle;

  DetailsCard({required this.iconName,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          color: Color(0xFF122F5C),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      margin: EdgeInsets.only(right: 30, top: 20, bottom: 20,left:5),
      width: 160.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            size: 50,
            color: Colors.white,
          ),
          const SizedBox(height: 10,),
          Text(subtitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),)
        ],
      ),
    );
  }
}
