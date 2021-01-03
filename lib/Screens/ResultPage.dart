import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/HomePage.dart';

void gotoHomePage(
    BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
        builder: (context) => HomePage()),
  );
}

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
        title: Text(' Result ',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Congratulations! Your Score is',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
            Image.asset(
              'assets/finish.png',
              width: 500,
              height: 500,
            ),

          RaisedButton(
            color: Colors.orangeAccent,
            padding: EdgeInsets.all(20),
            onPressed: () {
              gotoHomePage(context);
            },
            child: Text('Return Home'),
          ),
        ],
      ),
    );
  }
}
