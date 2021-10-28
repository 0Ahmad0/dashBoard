import 'package:flutter/material.dart';

class TextInputFiled extends StatelessWidget {
  final Function validate;
  final Function onChange;
  final String lable;
  final bool isMaxLine;

  const TextInputFiled({
    Key key,
    @required this.validate,
    @required this.onChange,
    @required this.lable, this.isMaxLine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        minLines: 1,
        maxLines: isMaxLine?3:1,
        decoration: InputDecoration(
            labelText: lable,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
        onChanged: onChange,
        validator: validate
      ),
    );
  }
}
