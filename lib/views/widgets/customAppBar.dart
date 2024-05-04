import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  String title = "";
  CustomAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: title
          ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
          TextSpan(text: " Chitra",style: TextStyle(color: Colors.deepOrange,fontSize: 20))
        ]),
      ),
    );
  }
}
