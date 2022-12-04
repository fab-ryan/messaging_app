import 'package:flutter/material.dart';

import 'chart_header.dart';
import 'chart_view.dart';

class MyChartApp extends StatefulWidget {
  const MyChartApp({super.key});

  @override
  State<MyChartApp> createState() => _MyChartAppState();
}

class _MyChartAppState extends State<MyChartApp> {
  // ignore: prefer_final_fields
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // home: Scaffold(
        //     appBar: AppBar(
        //       title: const Text('My Chart App'),
        //       elevation: 1.0,
        //       actions: <Widget>[
        //         IconButton(
        //           icon: const Icon(Icons.help),
        //           tooltip: 'Add new entry',
        //           onPressed: () {
        //             // Add your onPressed code here!
        //           },
        //         ),
        //       ],
        //       shape: const RoundedRectangleBorder(
        //         borderRadius: BorderRadius.vertical(
        //           bottom: Radius.circular(20),
        //         ),
        //       ),
        //       backgroundColor: Colors.blue[900],
        //     ),
        //     bottomNavigationBar: BottomNavigationBar(
        //         currentIndex: _currentIndex,
        //         onTap: (int index) {
        //           print('tapped $index');
        //           setState(() {
        //             _currentIndex = index;
        //           });
        //         },
        //         items: const <BottomNavigationBarItem>[
        //           BottomNavigationBarItem(
        //             icon: Icon(Icons.home),
        //             label: 'Home',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(Icons.message),
        //             label: 'Chat',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(Icons.settings),
        //             label: 'Settings',
        //           ),
        //         ]),
        //     floatingActionButton: FloatingActionButton(
        //       onPressed: () {
        //         // Add your onPressed code here!
        //       },
        //       child: Icon(Icons.add),
        //       backgroundColor: Colors.blue[900],
        //       hoverColor: Colors.blue[800],
        //       clipBehavior: Clip.hardEdge,
        //     ),
        //     body: ListView(children: const <Widget>[
        //       Chartheader(),
        //       Chartheader(),
        //       Chartheader(),
        //     ])));
        home: ChartView());
  }
}
