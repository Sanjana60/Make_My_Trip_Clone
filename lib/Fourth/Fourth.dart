import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.house,
                    color: Colors.pink,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Hotels and Homestays',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.pink,
                    size: 10,
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Best picks for your stay in Jaipur',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.2,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            'Fri, 27 Jan 23 - Sat, 28 Jan 23',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              letterSpacing: 0.2,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
            ),
          )
        ],
      ),
    );
  }
}
