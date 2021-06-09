import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoloio/screens/widgets/aboutme.dart';
import 'package:portfoloio/screens/widgets/card.dart';
import 'package:portfoloio/screens/widgets/contactme.dart';
import 'package:portfoloio/screens/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: 'Fayaz Azeem P',
                subtitle: 'Developer',
                color: Color(0xFF122F5C),
              ),
              const SizedBox(
                height: 10,
              ),
              AboutMe(),
              const SizedBox(
                height: 10,
              ),
              ContactMe(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: [
                        DetailsCard(iconName: Icons.person_outlined,subtitle: 'About Me',),
                        DetailsCard(iconName: Icons.facebook_outlined,subtitle: 'Social Media',),
                        DetailsCard(iconName: Icons.book_outlined, subtitle: 'Hobbies',),
                        DetailsCard(iconName: Icons.work_outline, subtitle: 'Experience',),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 125,right: 125),
                child: Text('Copyright @ 2021',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF122F5C)
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
