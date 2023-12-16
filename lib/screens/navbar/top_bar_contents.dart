import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/models/top_bar_tab.dart';

class TopBarContents extends StatefulWidget {

  const TopBarContents({super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        color: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: screenSize.width/4,),
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'Home', flag: _isHovering[0]),
                    // SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'About', flag: _isHovering[1]),
                    // SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'Skills', flag: _isHovering[2]),
                    // SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'Projects', flag: _isHovering[3]),
                    // SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'Experience', flag: _isHovering[4]),
                    // SizedBox(width: screenSize.width / 15),
                    TopBarTab(text: 'Contact', flag: _isHovering[5]),
                  ],
                ),
              ),

          ),

      );
    //);
  }
}
