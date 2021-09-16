import 'package:flutter/material.dart';

class getDetailScreen extends StatefulWidget {
  List? value;

  getDetailScreen({Key? key, required this.value}) : super(key: key);

  @override
  _getDetailScreenState createState() => _getDetailScreenState(value);
}

class _getDetailScreenState extends State<getDetailScreen> {
  List? value;
  _getDetailScreenState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Screen News"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                value![0],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                value![1],
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }
}
