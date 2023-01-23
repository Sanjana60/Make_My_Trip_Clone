import 'package:flutter/material.dart';

class CardListViewBuilder extends StatefulWidget {
  const CardListViewBuilder({Key? key}) : super(key: key);

  @override
  State<CardListViewBuilder> createState() => _CardListViewBuilderState();
}

class _CardListViewBuilderState extends State<CardListViewBuilder> {
  final List<String> names = <String>[
    'Coupon Lounge',
    'Play and Win',
    'Refer and Earn',
    'Offers',
    'Events and Festivals',
    'Self Drive',
    'Flight Status',
    'UPI Pay'
  ];
  static const ic = <IconData>[
    Icons.local_offer_outlined,
    Icons.auto_awesome_motion,
    Icons.mark_as_unread_rounded,
    Icons.offline_bolt_outlined,
    Icons.confirmation_num_outlined,
    Icons.car_crash,
    Icons.flight_takeoff_outlined,
    Icons.qr_code_scanner,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      child: Material(
        elevation: 5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: names.length + 1,
          itemBuilder: (context, i) {
            return i == 0
                ? SizedBox(
                    width: 10,
                  )
                : Material(
                    elevation: 5,
                    child:
                        FirstListBuilder(names: names[i - 1], ic: ic[i - 1]));
          },
        ),
      ),
    );
  }
}

class FirstListBuilder extends StatefulWidget {
  final String names;
  final IconData ic;

  const FirstListBuilder({Key? key, required this.names, required this.ic})
      : super(key: key);

  @override
  State<FirstListBuilder> createState() => _FirstListBuilderState();
}

class _FirstListBuilderState extends State<FirstListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.ic,
              color: Colors.black,
              size: 10,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              '${widget.names}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10.0,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
