import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checkbox_model.dart';
import 'main.dart';

class MyAppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CheckboxModel(),
      child: MyApp(),
    );
  }
}
