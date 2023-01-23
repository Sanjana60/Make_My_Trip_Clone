import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardSecond extends StatefulWidget {
  const CardSecond({Key? key}) : super(key: key);

  @override
  State<CardSecond> createState() => _CardSecondState();
}

class _CardSecondState extends State<CardSecond> {
  final List<String> namesssecond = <String>[
    'Hilton Jaipur',
    'Four Points By Sheraton',
    'The Fern',
    'Radison Jaipur City Center',
    'Sawai Man Mahal, Jaipur',
  ];
  final List<String> location = <String>[
    'Bais Godam',
    'Tonk road',
    'Meta Colony',
    'Near Collectorate Circle',
    'Rambagh',
  ];
  final List<String> pay = <String>[
    '11,500',
    '7,232',
    '13,702',
    '3,590',
    '25,000',
  ];
  final List<String> imgList = <String>[
    'images/Hilton.jpg',
    'images/Four.jpg',
    'images/fern.png',
    'images/radisson.jpg',
    'images/sawai.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 165,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: namesssecond.length,
          itemBuilder: (context, i) {
            return SecondListBuilder(
                namesssecond: namesssecond[i],
                location: location[i],
                pay: pay[i],
                imgList: imgList[i]);
          },
        ),
      ),
    );
  }
}

class SecondListBuilder extends StatefulWidget {
  final String namesssecond;
  final String location;
  final String pay;
  final imgList;
  const SecondListBuilder(
      {Key? key,
      required this.namesssecond,
      required this.pay,
      required this.location,
      required this.imgList})
      : super(key: key);

  @override
  State<SecondListBuilder> createState() => _SecondListBuilderState();
}

class _SecondListBuilderState extends State<SecondListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Material(
          elevation: 5,
          child: Container(
            width: 200,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('${widget.imgList}'),
                  height: 100,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.namesssecond}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add_location_sharp,
                            color: Colors.black,
                            size: 8,
                          ),
                          Text(
                            '${widget.location}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 8.0,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemSize: 10.0,
                              itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.black87,
                                  ))
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.black87,
                            size: 12,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            '${widget.pay}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'per night',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 8.0,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
