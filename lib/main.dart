import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var _text = "";

final _controller = TextEditingController();
final _controller2 = TextEditingController();
final _controller3 = TextEditingController();

String? get _errorText {
  final text = _controller.value.text;

  if (text.isEmpty) {
    return 'Can\'t be empty';
  }

  return null;
}

String? get _errorText2 {
  final text2 = _controller2.value.text;

  if (text2.isEmpty) {
    return 'Can\'t be empty';
  }

  return null;
}

String? get _errorText3 {
  final text3 = _controller3.value.text;

  if (text3.isEmpty) {
    return 'Can\'t be empty';
  }

  return null;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          'KAYIT EKRANI',
          style: TextStyle(color: Colors.amberAccent, fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('Kişi Kayıt'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                errorText: _errorText,
                                labelText: 'isim:',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              onChanged: (text) => setState(() => _text),
                            ),
                            TextField(
                              controller: _controller2,
                              decoration: InputDecoration(
                                errorText: _errorText2,
                                labelText: 'yaş:',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              onChanged: (text) => setState(() => _text),
                            ),
                            TextField(
                              controller: _controller3,
                              decoration: InputDecoration(
                                errorText: _errorText3,
                                labelText: 'puan:',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              onChanged: (text) => setState(() => _text),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              if (_errorText == null &&
                                  _errorText2 == null &&
                                  _errorText3 == null) {
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => secondpage()),
                                );
                              }
                              return null;
                            },
                            child: Text('KAYDET'))
                      ],
                    ));
          });
        },
      ),
    );
  }
}

class secondpage extends StatelessWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                width: 300,
                height: 70,
                child: Text(
                  _controller.text,
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                width: 300,
                height: 70,
                child: Text(
                  _controller2.text,
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                width: 300,
                height: 70,
                child: Text(
                  _controller3.text,
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
