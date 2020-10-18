import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  final String name;
  final dynamic colorval;
  final dynamic textcolor;
  final Function func;
  const Catagory({Key key, this.name, this.colorval, this.func, this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: func,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(colorval),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            name,
            style: TextStyle(
              color: Color(textcolor),
            ),
          ),
        ),
      ),
    );
  }
}
