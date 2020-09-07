import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RawMaterialButton(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Back",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 0, 0, 10),
              child: Text(
                "Resources",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 20, 20, 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Section Title",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 20, 20, 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Section Title",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                  getResourceTile("Resource Title"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  getResourceTile(String title) {
    return Card(
      elevation: 0,
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black87,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
