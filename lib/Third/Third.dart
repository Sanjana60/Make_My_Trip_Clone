import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 79,
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width - 60,
          color: Color(0xff202A44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book Now Pay Later!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Book your trip today and pay back later!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.0,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
        ),
        Material(
          elevation: 5,
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width - 60,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Link your mobile number to check eligibility',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          letterSpacing: 0.2,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login Mobile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.2,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Powered by Trip oney',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                          letterSpacing: 0.2,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
