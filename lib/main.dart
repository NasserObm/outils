// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:outils/Page.dart';
import 'package:outils/Page3.dart';
import 'package:outils/PageHome.dart';

void main() => runApp(const MyOutils());

class MyOutils extends StatelessWidget {
  const MyOutils({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
