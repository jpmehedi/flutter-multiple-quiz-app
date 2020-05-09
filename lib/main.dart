import 'package:flutter/material.dart';
import './quize_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Multiple Quiz App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MCQ Quiz App"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      var route =
                          MaterialPageRoute(builder: (contex) => QuizePage());
                      Navigator.push(context, route);
                    },
                    child: Text(
                      'Level One',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
