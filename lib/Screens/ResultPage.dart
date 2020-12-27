import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text(' Sonuç ',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(
              'assets/finish.png',
              width: 500,
              height: 500,
            ),
          Text(
            'Tebrikler Puanınız',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
