import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MenuDrawerTab extends StatefulWidget {
  final String text;
  MenuDrawerTab({super.key, required this.text});

  @override
  State<MenuDrawerTab> createState() => _MenuDrawerTabState();
}

class _MenuDrawerTabState extends State<MenuDrawerTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            widget.text,
            style: TextStyle(color: kBlack, fontSize: 22),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Divider(
            color: Colors.black26,
            thickness: 2,
          ),
        )
      ],
    );
  }
}
