import 'package:flutter/material.dart';
import 'name_cards.dart';

class NameCardModel extends ChangeNotifier {
  Map<String?, bool> _isCheckedMap = {};
  Map<String?, bool> get isCheckedMap => _isCheckedMap;

  bool isChecked(String name) {
    return _isCheckedMap[name] ?? false;
  }

  void toggleCheckbox(String? name, bool newValue) {
    print("Inside Checkbox Model");
    _isCheckedMap[name] = newValue;
    notifyListeners();
  }
}
