import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:developer';

import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Super Apps",
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: ColorSelect.redTheme,
        ),
        home: const MyHomePage(title: 'Super Apps'));
  }

// This widget is the root of your application.

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            centerTitle: true,
            collapsedHeight: 150,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white),
                            height: 40,
                            child: const Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search menu or transaction',
                                    prefixIcon: Icon(Icons.search)),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          onPressed: () {
                            Fluttertoast.showToast(
                                msg: "This is Center Short Toast",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.TOP_RIGHT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.white,
                                textColor: Colors.black,
                                fontSize: 16.0);
                          },
                        )
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/fox.png'),
                        ),
                      ],
                    ),
                  ],
                )),
          ),

          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: ColorSelect.red1,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
