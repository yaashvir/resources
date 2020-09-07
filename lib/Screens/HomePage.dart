import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: MaterialButton(
              elevation: 2,
              color: Colors.grey[100],
              focusColor: Colors.green[50],
              highlightColor: Colors.green[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text("Go to Second Page"),
              padding: const EdgeInsets.all(10),
              onPressed: () {
                Navigator.pushNamed(context, "SecondPage");
              }),
        ),
      ),
    );
  }
}
