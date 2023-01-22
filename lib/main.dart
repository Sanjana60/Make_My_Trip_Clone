import 'package:flutter/material.dart';
import 'package:make_my_trip/FirstListBuilder/FirstListBuilder.dart';
import 'BlurText/BlurText.dart';
import 'First/First.dart';
import 'Fourth/Fourth.dart';
import 'Second/Second.dart';
import 'Third/Third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  HeaderImage(),
                  HeaderContainer(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(height: 72.0, child: BlurText())),
              ),
              // Container(height: 155.0, child: BlurText()),
              Padding(
                padding: const EdgeInsets.only(top: 115),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(height: 72.0, child: First())),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(height: 150.0, child: Second())),
                    CardListViewBuilder(),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(child: Third())),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(child: Fourth())),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderImage extends StatelessWidget {
  const HeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.fill,
      height: 150,
      width: MediaQuery.of(context).size.width,
      image: AssetImage('images/headerimage.jpg'),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 150,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
