import 'package:flutter/material.dart';
import 'package:flutter_infpage/core/base/util/size_util.dart';

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            item("1"),
            item("2"),
            item("3"),
          ],
        ),
      ),
    );
  }

  item(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.green),
        width: SizeUtil.itemWidth,
        height: SizeUtil.itemHeight,
        child: Text(title, style: TextStyle(color: Colors.black, fontSize: 50)),
      ),
    );
  }
}
