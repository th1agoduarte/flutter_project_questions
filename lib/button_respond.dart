import 'package:flutter/material.dart';

class ButtonRespond extends StatelessWidget {
  final String text;
  final void Function() onSelected;
  ButtonRespond(this.text, this.onSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(text),
        onPressed: onSelected,
      ),
    );
  }
}
