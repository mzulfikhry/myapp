import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fruity App'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String _textString = 'Enter input to select your favourite fruit';
  String _select =
      '0 = Apple \n 1 = Pineapple \n 2 = Potato \n 3 = Orange \n 4 = Tomato';
  var fruitsIndex = 0;
  List<String> fruits = ['Apple', 'Pineapple', 'Potato', 'Orange', 'Tomato'];

  TextEditingController a = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: a),
        Text(
          _textString,
          style: TextStyle(fontSize: 25),
        ),
        Text(
          _select,
          style: TextStyle(fontSize: 25),
        ),
        RaisedButton(
            child: Text('Submit'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text the that user has entered by using the
                    // TextEditingController.
                    content: Text(fruits[int.parse(a.text)]),
                  );
                },
              );
            }),
      ],
    );
  }
}
