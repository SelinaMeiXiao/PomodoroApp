import 'package:flutter/material.dart';
import 'package:pomodoro_project/screens/timerservice.dart';
import 'package:pomodoro_project/screens/widgets/progress.dart';
import 'package:pomodoro_project/screens/widgets/timecontroller.dart';
import 'package:pomodoro_project/screens/widgets/timercard.dart';
import 'package:pomodoro_project/screens/widgets/timeroptions.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class homescreen extends StatelessWidget {
  const homescreen({super.key});
  Color renderColor(String currentState) {
    if (currentState == "FOCUS") {
      return const Color.fromARGB(255, 148, 82, 255);
    } else {
      return const Color.fromARGB(255, 126, 180, 241);
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<timerservice>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: renderColor(provider.currentState),
        title: const Text(
        'POMOTIMER',
          style: TextStyle(fontFamily: 'BubblegumSans', fontSize: 25, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            iconSize: 40,
            color: Colors.white,
            onPressed: () =>
                Provider.of<timerservice>(context, listen: false).reset(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const TimerCard(),
              const SizedBox(
                height: 50,
              ),
              timerOptions(),
              const SizedBox(
                height: 100,
              ),
              const timeController(),
              const SizedBox(
                height: 80,
              ),
              const progress()
            ],
          ),
        ),
      ),
    );
  }
}