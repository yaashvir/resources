import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {
  String pageTitle = "Car Filters";
  Map<String, List<String>> resources = {
    "Car Types": ["Hatchback", "Sedan", "SUV", "MUV", "Luxury"],
    "Fuel Type": ["CNG", "Petrol", "Diesel", "Electric", "Hybrid"],
    "Transmission Type": ["MT", "AT", "AMT", "DCT", "IMT"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RawMaterialButton(
              padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
              highlightColor: Colors.grey[100],
              focusColor: Colors.grey[100],
              constraints: BoxConstraints.tightForFinite(),
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
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                pageTitle,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: getResourceSections(),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  getResourceSections() {
    List<Widget> children = List<Widget>();
    resources.forEach((key, value) {
      children.add(getResourceSection(key, value));
    });
    return children;
  }

  getResourceSection(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) => getResourceTile(items[index]),
          )
        ],
      ),
    );
  }

  getResourceTile(String title) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      color: Colors.grey[200],
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
