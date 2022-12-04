import 'package:flutter/material.dart';

class Chartheader extends StatefulWidget {
  const Chartheader({super.key});

  @override
  State<Chartheader> createState() => _ChartheaderState();
}

class _ChartheaderState extends State<Chartheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(0),
        ),
        color: Colors.blue[900],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Text(
                  "<Friends Name>",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white),
                ),
                Text("Last seen: <Time>",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white)),
                Text("Status: <Status>",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white)),
              ])),
          CircleAvatar(
            radius: 20,
            child: Text(
              "T",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.apply(color: Colors.white, fontWeightDelta: 1),
            ),
          )
        ],
      ),
    );
  }
}
