import 'package:flutter/material.dart';
import 'package:messaging_app/chart_message.dart';

class ChartView extends StatefulWidget {
  const ChartView({super.key});

  @override
  State<ChartView> createState() => _ChartViewState();
}

class _ChartViewState extends State<ChartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends Name'),
        elevation: 1.0,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(children: const <Widget>[
        ChartMessage(isFriend: false),
        SizedBox(
          height: 10,
          child: Divider(
            color: Colors.white,
          ),
        ),
        ChartMessage(isFriend: true),
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.photo),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Type a message',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
