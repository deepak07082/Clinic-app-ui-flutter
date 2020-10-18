import 'package:flutter/cupertino.dart';

class dType {
  final dynamic color;
  final String name;
  final String imgpath;
  final int doc;

  dType({this.color, this.name, this.imgpath, this.doc});
  static List<dType> dtype1 = [
    dType(
      color: Color(0xFFfbb97c),
      doc: 10,
      imgpath: "cold.png",
      name: "cold",
    ),
    dType(
      color: Color(0xFFfbb97c),
      doc: 17,
      imgpath: "heart.png",
      name: "Heart Specialist",
    ),
    dType(
      color: Color(0xFFfbb97c),
      doc: 13,
      imgpath: "dental.jpg",
      name: "dentalist",
    ),
    dType(
      color: Color(0xFFfbb97c),
      doc: 53,
      imgpath: "fever.png",
      name: "Fever",
    ),
    dType(
      color: Color(0xFFfbb97c),
      doc: 144,
      imgpath: "d1.jpg",
      name: "other",
    ),
  ];
}
