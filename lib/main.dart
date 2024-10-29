import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/consants.dart';
import 'package:nots_app/views/nots_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          sizeConstraints: BoxConstraints.tightFor(height: 70, width: 70),
        ),
      ),
      home: const NotsView(),
    );
  }
}
