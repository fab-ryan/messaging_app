import 'package:flutter/material.dart';

class ChartMessage extends StatefulWidget {
  @override
  State<ChartMessage> createState() => _ChartMessageState();
  final bool? isFriend;
  final String? message;
  final String? time;
  final bool? isPrevious;
  const ChartMessage({
    Key? key,
    @required this.isFriend,
    this.message,
    this.time,
    this.isPrevious,
  }) : super(key: key);
}

class _ChartMessageState extends State<ChartMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.blue[800],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          widget.isFriend == false
              ? const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                )
              : Container(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Chart Message"),
            ),
          ),
          widget.isFriend == true
              ? const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                )
              : Container(),
        ],
      ),
    );
  }
}
