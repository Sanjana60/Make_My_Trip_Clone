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
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.equalizer_rounded,
    Icons.wifi_lock,
    Icons.mail,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width - 60,
      child: Material(
        elevation: 5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: (context, i) {
            return FirstListBuilder(names: names[i], ic: ic[i]);
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
        padding: const EdgeInsets.all(1),
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
      ),
    );
  }
}
