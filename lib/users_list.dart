import 'package:eform_testproject/bottom_action_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'name_cards.dart';

class UsersList extends StatefulWidget {
  static String routeName = 'UsersList';

  // FirebaseApp app;
  // FirebaseAuth auth;
  // UsersList(this.app, this.auth);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<Object> listOfUsers = [];
  List<String> names = [];
  late Future<void> _initialization;
  List<Widget> displayableCardWidgets = [];
  @override
  void initState() {
    super.initState();
    retrieveUserData();

    //_initialization = Firebase.initializeApp();
  }

  // void retrieveAllUsers() {
  //   FirebaseDatabase.instance
  //       .reference()
  //       .child('Users')
  //       .child('UserGroup1')
  //       .orderByKey()
  //       .once()
  //       .then((DataSnapshot snapshot) {
  //     Map<dynamic, dynamic> values = snapshot.value;
  //     values.forEach((key, values) {
  //       print(values['name']);
  //     });
  //     return null;
  //   });
  // }

  // void hi() {
  //   FirebaseDatabase.instance
  //       .reference()
  //       .child('Users')
  //       .child('UserGroup1')
  //       .orderByKey()
  //       .once()
  //       .then((DataSnapshot snapshot) {
  //     // handle the DataSnapshot here
  //     Map<dynamic, dynamic> values = snapshot.value;
  //     values.forEach((key, values) {
  //       print(values['name']);
  //     });
  //   });
  //
  // }
// No Idea why this doesn't work, this async function .then() expects a function that returns a value
  // not a Future, but
  void retrieveUserData() {
    String? role;
    String? name;
    Widget? returnableCard;
    var databaseReference = FirebaseDatabase.instance.reference();
    databaseReference.child('Users').child('MPTC').onChildAdded.listen((event) {
      DataSnapshot dataSnapshot = event.snapshot;
      Map<dynamic, dynamic> values =
          dataSnapshot.value as Map<dynamic, dynamic>;
      int i = 0;
      values.forEach((key, values) {
        print('Instance $i');
        print('KEY: $key');
        print('VALUES: $values');
        if (key == 'name') {
          name = values;
          names.add(values);
        }
        if (key == 'role') {
          role = values;
        }

        i++;
      });
      displayableCardWidgets.add(NameCards(name, role));

      // Map<dynamic, dynamic> values = dataSnapshot.value.forEach((key, values) {
      //   print(values['name']);
      // });
    });
  }

  // bool isAtLeastOneChecked =
  //     displayableCardWidgets.any((nameCard) => nameCard.isChecked);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    print("inside build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Users',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return displayableCardWidgets[index];
          },
        ),
      ),
      bottomNavigationBar: BottomActionBar(),
    );
  }
}
