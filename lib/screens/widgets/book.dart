import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

abstract class Page extends StatefulWidget {
  const Page({super.key});


 Widget build(BuildContext context){
    return Container(
      child: Lottie.asset("assets/animations/book.json",
      repeat: true,
      width: 100,
      height: 100,
      ),
    );
  }
}