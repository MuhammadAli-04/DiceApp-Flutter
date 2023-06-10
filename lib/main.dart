import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text("Dice App")),
        ) ,
        body: const Dice()
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left = 1;
  int right = 1;

  void pressed(){
    setState(() {
      left = Random().nextInt(6)+1;
      right = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(child: TextButton(
                onPressed: pressed,
                child: Image.asset('images/dice$left.png'))),
            Expanded(child: TextButton(
                onPressed: pressed,
                child: Image.asset('images/dice$right.png'))),
          ],
        ),
      ),
    );
  }
}
