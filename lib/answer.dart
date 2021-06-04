import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String label;

  Answer(this.selectHandler, this.label);

  @override
  Widget build(BuildContext context) {
    var selectHandler2 = selectHandler;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: RaisedButton(
        child: Text(label),
        color: Colors.blue.shade400,
        textColor: Colors.white,
        onPressed: selectHandler2,
      ),
    );
  }
}
