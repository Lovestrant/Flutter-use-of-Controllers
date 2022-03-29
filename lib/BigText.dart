import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  String text;
  double size;
  Color? color;

   BigText({Key? key,
     required this.text,
     required this.size,
     this.color = const Color(0xffffffff)
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color
      ),
    );
  }
}
