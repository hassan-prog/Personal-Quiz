import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  
  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'You did it!',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        TextButton(child: Text('Reset Quiz'),onPressed: resetHandler,),
      ],
    ));
  }
}
