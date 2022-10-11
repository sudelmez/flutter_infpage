import 'package:flutter/material.dart';

class DialogService {
  show(BuildContext context, Widget widget) {
    showDialog<String>(context: context, barrierDismissible: true, builder: (BuildContext context) => widget);
  }
}
