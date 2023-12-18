import 'package:flutter/material.dart';
import 'package:portfolio/models/menu_drawer_tab.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: const Padding(

          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MenuDrawerTab(text: 'Home'),
              MenuDrawerTab(text: 'About'),
              MenuDrawerTab(text: 'Skills'),
              MenuDrawerTab(text: 'Projects'),
              MenuDrawerTab(text: 'Experience'),
              MenuDrawerTab(text: 'Contact'),

              // InkWell(
              //   onTap: () {},
              //   child: Text(
              //     'Home',
              //     style: TextStyle(color: kBlack, fontSize: 22),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              //   child: Divider(
              //     color: kBlack,
              //     thickness: 2,
              //   ),
              // ),
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.bottomCenter,
              //     child: Text(
              //       'Copyright © 2021 | DBestech',
              //       style: TextStyle(
              //         color: Colors.blueGrey.shade300,
              //         fontSize: 14,
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
