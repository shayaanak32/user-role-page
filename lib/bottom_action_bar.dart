import 'package:eform_testproject/name_card_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checkbox_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'clickable_icon.dart';
import 'add_role_popup_card.dart';

class BottomActionBar extends StatelessWidget {
  void handleOnTap() {
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       title: Text('My Popup'),
    //       content: Container(
    //         width: double.maxFinite,
    //         child: ListView.builder(
    //           shrinkWrap: true,
    //           itemCount: 10,
    //           itemBuilder: (BuildContext context, int index) {
    //             return ListTile(
    //               title: Text('Item $index'),
    //             );
    //           },
    //         ),
    //       ),
    //       actions: [
    //         TextButton(
    //           onPressed: () {
    //             Navigator.of(context).pop();
    //           },
    //           child: Text('Close'),
    //         ),
    //       ],
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NameCardModel>(builder: (context, nameCardModel, child) {
      bool isAnyChecked =
          nameCardModel.isCheckedMap.values.any((value) => value);

      return Visibility(
        visible: isAnyChecked,
        child: BottomAppBar(
          child: Container(
            height: 50.0,
            width: double.infinity,
            color: Colors.blue,
            child: Row(children: [
              Center(
                child: Text('My bottom bar'),
              ),
              SizedBox(
                width: 200.0,
              ),
              ClickableIcon(
                  handleOnTap,
                  Icon(
                    FontAwesomeIcons.trashCan,
                    size: 30.0,
                  )),
              SizedBox(
                width: 30.0,
              ),
              ClickableIcon(
                  handleOnTap, Icon(FontAwesomeIcons.plus, size: 30.0)),
            ]),
          ),
        ),
      );
    });
  }
}
