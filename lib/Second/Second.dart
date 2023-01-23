import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(3),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Airports',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Homestays',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Outstation',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Travel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Cards',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Hourly Stays',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Train',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/circle.png',
                      ),
                      height: 25.0,
                    ),
                    Text(
                      'Forex',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
