import 'package:doctorinfo/Models/Doctorinfo.dart';
import 'package:doctorinfo/Screens/info.dart';
import 'package:doctorinfo/Widgets/catagoryslider.dart';
import 'package:doctorinfo/Widgets/catagoty.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String start = "adults";
  List<Doctorinfo1> doc = Doctorinfo1.doctorinfo2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Find Your \nConsultation",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: Colors.black45,
                              spreadRadius: 1,
                              blurRadius: 4)
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Search..",
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  "Catagories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Catagory(
                            name: "adults",
                            textcolor:
                                start == "adults" ? 0xFFd28847 : 0xFF161616,
                            colorval:
                                start == "adults" ? 0xFFffd0aa : 0xFFffffff,
                            func: () {
                              setState(() {
                                start = "adults";
                              });
                            },
                          ),
                          Catagory(
                            name: "childrens",
                            textcolor:
                                start == "childrens" ? 0xFFd28847 : 0xFF161616,
                            colorval:
                                start == "childrens" ? 0xFFffd0aa : 0xFFffffff,
                            func: () {
                              setState(() {
                                start = "childrens";
                              });
                            },
                          ),
                          Catagory(
                            name: "mens",
                            textcolor: start == "men" ? 0xFFd28847 : 0xFF161616,
                            colorval: start == "men" ? 0xFFffd0aa : 0xFFffffff,
                            func: () {
                              setState(() {
                                start = "men";
                              });
                            },
                          ),
                          Catagory(
                            name: "womens",
                            textcolor:
                                start == "women" ? 0xFFd28847 : 0xFF161616,
                            colorval:
                                start == "women" ? 0xFFffd0aa : 0xFFffffff,
                            func: () {
                              setState(() {
                                start = "women";
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.3,
                  margin: EdgeInsets.only(bottom: 10),
                  child: CatagorySlider(),
                ),
                Text(
                  "Doctors",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                ...doc.map((data) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Info(
                                    docinfo: data,
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10, top: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: "hero${data.imgpath}",
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "lib/assets/${data.imgpath}",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${data.name}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("${data.type}"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFd28847),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Scaffold.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            "Phone Number is ${data.pnumber}"),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 9.0,
                                      horizontal: 14.0,
                                    ),
                                    child: Text("Call"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
