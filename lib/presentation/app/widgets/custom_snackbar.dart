import 'package:flutter/material.dart';

class CustomSnackbar extends StatelessWidget {
  const CustomSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white,
        onPressed: () {},
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      content: Container(
        child: Row(
          children: <Widget>[],
        ),
      ),
    );
  }
}
