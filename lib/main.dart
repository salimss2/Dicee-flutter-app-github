import 'dart:math';
import 'package:dicee/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body:const DicePageState(),
      ),
    ),
  );
}

class DicePageState extends StatefulWidget {

  const DicePageState({super.key});

  @override
  State<DicePageState> createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageState> {

  int diceNumber = 1;
  int diceSecondNumber = 1;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Colors.yellow),
          foregroundColor: WidgetStatePropertyAll(Colors.red)),
          onPressed: () {
            setState(() {
              diceNumber = Random().nextInt(6) + 1;
              diceSecondNumber = Random().nextInt(6) + 1;
            });
          },

          child: Text('Random'),
        ),

        SizedBox(

          width: 200,
          child: Divider(color: Colors.white,),),
        SizedBox(height: 90,),
        Row(
          children: [
            ImagesButtons(diceNumber: diceNumber),
            ImagesButtons(diceNumber:diceSecondNumber),
          ],
        ),
      ],
    );
  }
}
