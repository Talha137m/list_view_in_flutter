import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  final String title;
  final String brandName;
  final String gender;
  final Image image;
  const CustomWidget(
      {super.key,
      required this.brandName,
      required this.title,
      required this.gender,
      required this.image});

  @override
  State<CustomWidget> createState() => _ListViewState();
}

class _ListViewState extends State<CustomWidget> {
  late String title;
  late String brandName;
  late String gender;
  late Image image;
  @override
  void initState() {
    super.initState();
    title = widget.title;
    brandName = widget.brandName;
    gender = widget.gender;
    image = widget.image;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    var totalSize = width + height;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.01, height * 0.04, 0, 0),
          child: Container(
            width: width * 0.98,
            height: height * 0.3,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.8, height * 0.09, 0, 0),
          child: SizedBox(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: totalSize * 0.01,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.8, height * 0.18, 0, 0),
          child: SizedBox(
            child: Text(
              brandName,
              style: TextStyle(
                color: Colors.white,
                fontSize: totalSize * 0.01,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.8, height * 0.28, 0, 0),
          child: SizedBox(
            child: Text(
              gender,
              style: TextStyle(
                color: Colors.white,
                fontSize: totalSize * 0.01,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(width * 0.02, height * 0.04, 0, 0),
          child: Container(
            width: width * 0.14,
            height: height * 0.4,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: image.image,
              ),
            ),
          ),
        )
      ],
    );
  }
}
