import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkbox_model.dart';
import 'name_card_model.dart';

class NameCards extends StatefulWidget {
  String? name;
  String? role;

  NameCards(this.name, this.role);

  @override
  State<NameCards> createState() => _NameCardsState();
}

class _NameCardsState extends State<NameCards> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
// getting the CheckboxModel in this particular context with the Provider class
    return Consumer<NameCardModel>(builder: (context, nameCardModel, child) {
      return Card(
        child: Row(
          children: [
            Column(children: [
              // Name
              Text(
                '${widget.name}',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // Role
              Text('${widget.role}'),
            ]),
            SizedBox(
              width: 200.0,
            ),
            Checkbox(
                value: isChecked,
                onChanged: (newBool) {
                  print('Setting State of Checkbox');
                  setState(() {
                    isChecked = newBool;
                    nameCardModel.toggleCheckbox(
                        widget.name, isChecked ?? false);
                  });
                }),
          ],
        ),
      );
    });
  }
}
