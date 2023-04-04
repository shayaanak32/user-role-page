import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddRolePopup extends StatelessWidget {
  //var databaseReference = FirebaseDatabase.instance.reference();
  //databaseReference.child('Users').child('MPTC');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}
