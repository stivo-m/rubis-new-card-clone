import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 16,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            subtitle ?? '',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
