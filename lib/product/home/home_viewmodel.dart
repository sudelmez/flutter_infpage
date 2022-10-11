import 'package:flutter/cupertino.dart';

import 'field_item_model.dart';

class HomeViewmodel {
  String? checkData(String val) {
    return val.isEmpty ? 'Can\'t be empty' : null;
  }

  List<FieldItems> items = [
    FieldItems(TextEditingController(), 'err1', 'lbl1'),
    FieldItems(TextEditingController(), 'err2', 'lbl2'),
    FieldItems(TextEditingController(), 'err3', 'lbl3'),
    FieldItems(TextEditingController(), 'err4', 'lbl4'),
  ];
}
