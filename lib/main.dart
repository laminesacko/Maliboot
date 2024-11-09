import 'package:flutter/material.dart';
import 'package:maliboot_challenge/views/acceuil.dart';
import 'package:maliboot_challenge/views/init_view.dart';
import 'package:maliboot_challenge/views/login.dart';
import 'package:maliboot_challenge/views/register.dart';
import 'package:maliboot_challenge/widgets/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       // Set the initial route if needed
        debugShowCheckedModeBanner: false,
        title: 'Mali boot',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: InitView());
  }
}
