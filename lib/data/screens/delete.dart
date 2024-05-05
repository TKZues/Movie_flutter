import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/Database_helper.dart';

class Delete1 extends StatelessWidget {
  Delete1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all(
              Colors.red)),
      onPressed: () async {
        await DatabaseHelper.deleteDatabase("k.db");
        Navigator.pop(context);
      },
      child: const Text('Yes'),
    );;
  }
}
