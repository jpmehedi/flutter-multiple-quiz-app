import 'package:flutter/material.dart';

class QuizePage extends StatefulWidget {
  @override
  _QuizePageState createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "1 Of 4",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Score: 0",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  child: Image.asset('images/owl.jpg'),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text("The quick brown fox jumps over the lazy dog.",),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Animal"),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Animal"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Animal"),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Animal"),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: () {
                    Navigator.pop(context);
                    },
                    child: Text("Quit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
