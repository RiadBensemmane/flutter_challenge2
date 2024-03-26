import 'package:challenge2mc/pages/add.dart';
import 'package:flutter/material.dart';
import 'package:challenge2mc/pages/profile.dart';
import 'package:challenge2mc/widgets/custom_alert.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Challenge2',
      home:  AddEventPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: FilledButton(onPressed: (){
            showDialog(context: context, builder: (context) => const CustomAlertDialog(title:"sure?", text1: "lelelle", text2: 'null',));
        },
         child: const Text("Cc cv "))
      ),
    );
  }
}
