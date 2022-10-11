import 'package:flutter/material.dart';
import 'package:flutter_infpage/product/home/home_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// TextButton(
//     onPressed: () {
//       if (_errorText == null && _errorText2 == null && _errorText3 == null) {
//         Navigator.of(context).pop();
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => secondpage()),
//         );
//       }
//       return null;
//     },
//     child: Text('KAYDET'))
