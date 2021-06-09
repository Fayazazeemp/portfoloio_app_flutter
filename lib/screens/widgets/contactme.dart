import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40),
      child: ClipRect(
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF122F5C),
                  ),
                )),
            TextButton(style: TextButton.styleFrom(
                padding: const EdgeInsets.all(8),
                primary: Colors.white,
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                )
            ),
                onPressed: () {}, child: const Text('Contact Me'))
          ],
        ),
      ),
    );
  }
}
