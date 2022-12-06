import 'package:flutter/material.dart';
import 'package:messaging_app/chart_message.dart';
import 'package:messaging_app/services/user_services.dart';

import 'chart_header.dart';
import 'chart_view.dart';
import 'model/user_models.dart';

class MyChartApp extends StatefulWidget {
  const MyChartApp({super.key});

  @override
  State<MyChartApp> createState() => _MyChartAppState();
}

class _MyChartAppState extends State<MyChartApp> {
  // ignore: prefer_final_fields
  int _currentIndex = 0;
  List<UserModel> users = [];
  getUser() async {
    final result = await UserServices.getUser();
    if (result == null) return;
    setState(() {
      users = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Chart App'),
          elevation: 1.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.help),
              tooltip: 'Add new entry',
              onPressed: () {
                // Add your onPressed code here!
              },
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.blue[900],
          hoverColor: Colors.blue[800],
          clipBehavior: Clip.hardEdge,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChartMessage(
                        isFriend: true,
                      ),
                    ),
                  );
                },
                child: Chartheader(
                  userName: users[index].name,
                ),
              )),
        ),
        // body: ListView(
        //   children: const <Widget>[
        //     Chartheader(
        //       userName: 'fabrice',
        //     ),
        //     Chartheader(
        //       userName: 'fabrice',
        //     ),
        //   ],
        // ),
      ),
    );
    // home: ChartView());
  }
}
