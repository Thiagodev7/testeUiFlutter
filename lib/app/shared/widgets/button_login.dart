import 'package:flutter/material.dart';
import 'package:teste/app/modules/home/home_page.dart';

class ButtonLogin extends StatelessWidget {
  String text;
  ButtonLogin({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 35.0,
      child: Container(
        //
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
          // ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [Color(0xff1498d5), Colors.white],
          ),
          color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        //
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            // shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),

          // ElevatedButton.styleFrom(
          //     // backgroundColor: LinearGradient(colors:[ Color(0xff1498d5), Color(0xff1498d5)]),

          //     //const Color(0xff1498d5),
          //     ),
          child: Text(text),
        ),
      ),
    );
  }
}
