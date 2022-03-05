import 'package:flutter/material.dart';
import 'package:rubis_card_clone/domain/strings.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.text = proceedText,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: Center(
            child: Text(
              text!,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
