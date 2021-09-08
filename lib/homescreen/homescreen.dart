// idrop
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var height = 180.0;
  void open() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('حماده يودعكم'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black87),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ok',
                    style: TextStyle(color: Colors.black87),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("حماده يحيكم "),
        backgroundColor: Colors.black87,
        elevation: 30,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${height.round()}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'CM',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Colors.black87,
              ),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Slider(
                  activeColor: Colors.black87,
                  inactiveColor: Colors.white,
                  value: height,
                  onChanged: (val) {
                    setState(() {
                      height = val;
                    });
                  },
                  min: 80,
                  max: 180,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black87),
              width: 200,
              child: MaterialButton(
                onPressed: open,
                child: Text(
                  'press',
                  style: TextStyle(color: Colors.white),
                ),
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
