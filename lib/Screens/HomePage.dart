import 'package:flutter/cupertino.dart';
import 'package:quiz_app/Screens/QuizPage.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/TrueFalsePage.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}void gotoTrueFalsePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => TrueFalsePage()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cet Quiz',
        style: TextStyle(color: Colors.black.withOpacity(0.8)),),
      backgroundColor: Colors.orangeAccent,),
      backgroundColor: Colors.amberAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: (Image.asset('assets/quiz3d.png',
        width: 200,
        height: 200,)
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orangeAccent,
                  width: 20,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all((10)),
            child: Center(
              child: Text(
                    'There are 10 questions to answer in total. The questions are prepared in multiple choice and T / F form. Good Luck!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                color: Colors.limeAccent,
                padding: EdgeInsets.all(10),
                onPressed: () {
                  gotoQuizPage(context);
                },
                child: Text('Multiple Choice'),
              ),
              RaisedButton(
                color: Colors.limeAccent,
                padding: EdgeInsets.all(10),
                onPressed: () {
                  gotoTrueFalsePage(context);
                },
                child: Text('True/False'),
              )
            ],
          ),

        ],
      ),
    );
  }
}
