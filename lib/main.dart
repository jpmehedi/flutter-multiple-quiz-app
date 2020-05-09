import 'package:flutter/material.dart';
import './quize_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
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
          title: Text("MCQ Quiz App".toUpperCase()),
        ),
        drawer: Drawer(),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    LevelBuilder("Level One"),
                    LevelBuilder("Level Two"),
                    LevelBuilder("Level Three"),
                    LevelBuilder("Level Four"),
                    LevelBuilder("Level Five"),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LevelBuilder extends StatelessWidget {
  LevelBuilder(this.levelText);
  final String levelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: MaterialButton(
        padding: EdgeInsets.all(15),
        color: Colors.teal,
        onPressed: () {
          var route = MaterialPageRoute(builder: (contex) => QuizePage());
          Navigator.push(context, route);
        },
        child: Text(
          levelText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
