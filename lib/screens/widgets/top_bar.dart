import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  TopBar({required this.title, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 44, horizontal: 23),
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C5603AQE_dTi-AupVWA/profile-displayphoto-shrink_800_800/0/1614942148799?e=1628121600&v=beta&t=5Uayle_C6XVelyBj2JXYspMe_pwnvucYKnEiAEzDjjI'),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 16, color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}