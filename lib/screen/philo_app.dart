import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class PhiloApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PhiloApp> {
  double screenHeight;
  double screenWidth;
  Widget child;
  bool clicked = false;

  GestureDetector makeCustomCard(String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            text,
            style: kTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          gradient: kGradient,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
      ),
    );
  }

  RaisedButton makeRaisedButton(String text) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff21BBBE),
          fontSize: 16.0,
          fontFamily: 'Rockwell',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget makeChoiceAdabeFalsafa() {
    return Column();
  }

  Widget chooseWidget() {
    return clicked
        ? Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.white,
                  iconSize: screenHeight * 0.04,
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    setState(() {
                      clicked = false;
                    });
                  },
                ),
                makeRaisedButton('ثانية ثانوي'),
                makeRaisedButton('ثالثة ثانوي'),
              ],
            ),
            decoration: BoxDecoration(
              gradient: kGradient,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                clicked = true;
              });
            },
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'آداب و     فلسفة',
                  style: kTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                gradient: kGradient,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    print('$screenWidth | $screenHeight');
    child = chooseWidget();
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  gradient: kGradient,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 11,
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.subject,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.facebookSquare,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenHeight * 0.02,
                          top: screenHeight * 0.005),
                      child: Text(
                        'PHILOSOPHYA',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Rockwell',
                          fontSize: screenHeight * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff21BBBE),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(39.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: makeCustomCard('تسيير و اقتصاد'),
                        ),
                        Expanded(
                          flex: 2,
                          child: makeCustomCard('علوم    رياضية'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: makeCustomCard('تقني     رياضي'),
                          flex: 2,
                        ),
                        Expanded(
                          flex: 2,
                          child: child,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: makeCustomCard('لغات         أجنبية'),
                        ),
                        Expanded(
                          child: makeCustomCard('علوم تجريبية'),
                          flex: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
