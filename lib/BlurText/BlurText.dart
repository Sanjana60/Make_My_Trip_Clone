import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class BlurText extends StatelessWidget {
  const BlurText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 25,
          right: 25,
          child: BlurryContainer(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            blur: 4,
            width: MediaQuery.of(context).size.width - 60,
            color: Colors.transparent,
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Evening,',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'Verify your mobile number to get exciting',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      'offers for your future trips',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
