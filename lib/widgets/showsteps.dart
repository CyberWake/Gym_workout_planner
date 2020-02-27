import 'package:flutter/material.dart';

class ShowSteps extends StatelessWidget {

  final int steps;
  ShowSteps(this.steps);
  int start=0;
  step(){
    start+=10;
    return start.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      start==steps?steps.toString():step(),
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 80,
        fontFamily: 'Bebas',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}