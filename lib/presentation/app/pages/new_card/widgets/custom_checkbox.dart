import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    Key? key,
    required this.text,
    this.isChecked,
    this.onChanged,
    this.titleStyle,
  }) : super(key: key);

  final Function(bool?)? onChanged;
  final bool? isChecked;
  final String text;
  final TextStyle? titleStyle;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? checked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: 20,
      child: Row(
        children: <Widget>[
          Checkbox(
            value: widget.isChecked ?? checked,
            onChanged: widget.onChanged ??
                (bool? value) {
                  setState(() {
                    checked = !checked!;
                  });
                },
          ),
          Text(
            widget.text,
            style: widget.titleStyle,
          )
        ],
      ),
    );
  }
}
