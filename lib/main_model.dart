import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String cc_text = "こんにちは";

  // ignore: non_constant_identifier_names
  void change_cc_text() {
    cc_text = "こんばんみ";
    notifyListeners();
  }
}