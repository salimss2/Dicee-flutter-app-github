
import 'package:flutter/material.dart';

class ImagesButtons extends StatelessWidget {
  int diceNumber;

  ImagesButtons({super.key,required this.diceNumber});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Image(
          image: AssetImage('images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
