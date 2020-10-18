import 'package:doctorinfo/Models/Typemodel.dart';
import 'package:flutter/material.dart';

class CatagorySlider extends StatefulWidget {
  CatagorySlider({Key key}) : super(key: key);

  @override
  _CatagorySliderState createState() => _CatagorySliderState();
}

class _CatagorySliderState extends State<CatagorySlider> {
  List<dType> dtype = dType.dtype1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: dtype.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You Pressed ${dtype[index].name}"),
                    ),
                  );
                },
                child: Container(
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: Colors.black12,
                        offset: Offset(0, 2),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage(
                        "lib/assets/${dtype[index].imgpath}",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 56),
                        child: Text(
                          "${dtype[index].name}",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("${dtype[index].doc} Doctors"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
