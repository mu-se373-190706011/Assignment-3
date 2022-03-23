import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // createState uygulama
    return MyAppState();
  }
}

//Buton yapılandırması..

class MyAppState extends State<myApp> {
  var counter = 0;
  var text = "Click :)";
  void restartCounter() {
    setState(() {
      counter = 0;
      textMessage();
    });
  }

  void clickedCounter() {
    setState(() {
      counter += 1;
      textMessage();
    });
  }

  void textMessage() {
    setState(() {
      if (counter == 0) {
        text = "Click :)";
      } else {
        text = "Click again..";
      }
    });
  }

// Buton ve yazılar için yapılandırmalar..
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Assignment 3"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(5, 10, 8, 10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 247, 0, 0),
                  minimumSize: Size(30, 1),
                  side: BorderSide(
                    width: 20.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
              child: Text("RESTART"),
              onPressed: restartCounter,
            ),
          ),
          Text(
            "For restart please RESTART click!",
            style: TextStyle(fontSize: 14),
          ),
          Padding(padding: EdgeInsets.all(100.0)),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10, 250, 10, 10),
            child: ElevatedButton(
              child: Text(text),
              onPressed: clickedCounter,
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(15),
                  textStyle: TextStyle(fontSize: 22),
                  alignment: Alignment.center),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Text(
              counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    ));
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ŞEHRE HOŞGELDİNİZ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//CheckBox yapımı için hazırlık.
class CheckBoxModel {
  String title;
  bool value;

  CheckBoxModel({@required this.title = " ", this.value = false});
}
