import 'package:flutter/material.dart';

class CheckboxModel extends ChangeNotifier {
  bool isChecked = false;

  void toggleCheckbox(bool newValue) {
    print("Inside Checkbox Model");
    isChecked = newValue;
    notifyListeners();
  }
}
