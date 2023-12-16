import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TopBarTab extends StatefulWidget {
  bool flag;
  final String text;
  TopBarTab({super.key, required this.text, required this.flag});

  @override
  State<TopBarTab> createState() => _TopBarTabState();
}

class _TopBarTabState extends State<TopBarTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            value
                ? widget.flag = true
                : widget.flag = false;
          });
        },
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
            const SizedBox(height: 5),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: widget.flag,
              child: Container(
                height: 2,
                width: 20,
                color: kBlack,
              ),
            )
          ],
        ),
      ),
    );
  }
}
