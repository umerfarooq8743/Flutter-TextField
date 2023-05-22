import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 196, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TextField !'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String myVar;
  String displayText = "Write A Text";

  void showText() {
    setState(() {
      displayText = myVar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color.fromARGB(255, 247, 224, 18)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 300),
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "$displayText",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextField(
                    onChanged: (text) {
                      myVar = text;
                    },
                    maxLength: 15,
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefix: Icon(Icons.supervised_user_circle_rounded),
                        hintText: "Enter Your Name:",
                        labelText: "UserName:,",
                        helperText: "Required"),
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
              MaterialButton(
                onPressed: () {
                  showText();
                },
                color: Color.fromARGB(255, 255, 0, 0),
                minWidth: 220,
                height: 52,
                splashColor: Color.fromARGB(185, 248, 6, 6),
                shape: StadiumBorder(),
                child: Text(
                  "Press",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
