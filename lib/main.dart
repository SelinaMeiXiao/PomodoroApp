import 'package:flutter/material.dart';
import 'package:pomodoro_project/screens/timerservice.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

import 'screens/homeScreen.dart';

void main() => runApp(ChangeNotifierProvider<timerservice>(
      create: (_) => timerservice(),
      child: const myApp(),
    ));

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}
