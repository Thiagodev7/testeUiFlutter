import 'package:flutter/material.dart';

class SpiceCard extends StatelessWidget {
  Icon icon;
  String text;
  SpiceCard({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: icon,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1498d5).withOpacity(0.4),
                    blurRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
