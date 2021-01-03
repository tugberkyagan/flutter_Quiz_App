import 'package:flutter/cupertino.dart';
import 'package:quiz_app/Screens/QuizPage.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/TrueFalsePage.dart';

void gotoQuizPage(BuildContext context, String difficulty, String category) {
  Navigator.of(context).push(
    MaterialPageRoute(
        builder: (context) => QuizPage(diff: difficulty, cat: category)),
  );
}

void gotoTrueFalsePage(
    BuildContext context, String difficulty, String category) {
  Navigator.of(context).push(
    MaterialPageRoute(
        builder: (context) => TrueFalsePage(diff: difficulty, cat: category)),
  );
}

class HomePage extends StatelessWidget {
  String diff;
  String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cet Quiz',
          style: TextStyle(color: Colors.black.withOpacity(0.8)),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.amberAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: (Image.asset(
              'assets/quiz3d.png',
              width: 200,
              height: 200,
            )),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orangeAccent,
                  width: 20,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
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
          MyStatefulWidget(onChanged: (value) {
            diff = value;
          }),
          CategoryWidget(onChanged: (value) {
            category = value;
          }),
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
                  gotoQuizPage(context, diff, category);
                },
                child: Text('Multiple Choice'),
              ),
              RaisedButton(
                color: Colors.limeAccent,
                padding: EdgeInsets.all(10),
                onPressed: () {
                  gotoTrueFalsePage(context, diff, category);
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

class MyStatefulWidget extends StatefulWidget {
  final Function(String) onChanged;

  MyStatefulWidget({Key key, this.onChanged}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Easy';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.yellowAccent,
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward,
        color: Colors.black,),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
        if (this.widget.onChanged != null) this.widget.onChanged(dropdownValue);
      },
      items: <String>['Easy', 'Medium']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class CategoryWidget extends StatefulWidget {
  final Function(String) onChanged;

  CategoryWidget({Key key, this.onChanged}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

/// This is the private State class that goes with CategoryWidget.
class _CategoryWidgetState extends State<CategoryWidget> {
  String dropdownValue = 'History';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.yellowAccent,
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward,
      color: Colors.black,),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
        if (this.widget.onChanged != null) this.widget.onChanged(dropdownValue);
      },
      items: <String>['History', 'Politics']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
