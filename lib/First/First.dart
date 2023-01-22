import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Material(
            elevation: 5,
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: -7,
          right: 10,
          left: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffe5f3fd),
                    child: Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                  ),
                  Text(
                    'Flights',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffe5f3fd),
                    child: Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                  ),
                  Text(
                    'Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffe5f3fd),
                    child: Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                  ),
                  Text(
                    'Train',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffe5f3fd),
                    child: Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                  ),
                  Text(
                    'Hotels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    'Packages',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
