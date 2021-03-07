import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_ux/src/utils/font_styles.dart';

class DishCounter extends StatefulWidget {
  final void Function(int) onChanged;
  DishCounter({Key? key, required this.onChanged}) : super(key: key);

  @override
  _DishCounterState createState() => _DishCounterState();
}

class _DishCounterState extends State<DishCounter> {
  int _counter = 0;

  void _updateCounter(int counter) {
    if (counter >= 0) {
      _counter = counter;
      setState(() {});
      widget.onChanged(_counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
            child: Icon(Icons.remove),
            borderRadius: BorderRadius.circular(30),
            onPressed: () => _updateCounter(_counter - 1),
            color: Colors.grey,
            padding: EdgeInsets.all(10),
          ),
          SizedBox(width: 10),
          Text(
            "$_counter",
            style: FontStyles.regular.copyWith(fontSize: 30),
          ),
          SizedBox(width: 10),
          CupertinoButton(
            child: Icon(Icons.add),
            borderRadius: BorderRadius.circular(30),
            onPressed: () => _updateCounter(_counter + 1),
            color: Colors.grey,
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
