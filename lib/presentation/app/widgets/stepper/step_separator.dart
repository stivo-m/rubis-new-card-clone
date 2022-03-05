import 'package:flutter/material.dart';

import 'package:rubis_card_clone/domain/enums.dart';

class StepSeparator extends StatelessWidget {
  const StepSeparator({
    Key? key,
    this.stepStatus = StepStatus.inactive,
    this.stepCount = 5,
  }) : super(key: key);

  final int? stepCount;
  final StepStatus? stepStatus;

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      switch (this.stepStatus) {
        case StepStatus.active:
          return Colors.white;
        case StepStatus.inactive:
          return Colors.white60;
        case StepStatus.completed:
          return Theme.of(context).colorScheme.tertiaryContainer;
        case StepStatus.unknown:
          return Theme.of(context).colorScheme.tertiaryContainer;
        default:
          return Theme.of(context).colorScheme.error;
      }
    }

    Widget dottedLine(int index) => Container(
          color: index % 2 == 0 ? Colors.white70 : Colors.transparent,
          height: 2,
          width: 3,
        );

    switch (this.stepStatus) {
      case StepStatus.active:
        return AnimatedContainer(
          duration: kThemeAnimationDuration,
          width: MediaQuery.of(context).size.width / (stepCount! * 1.7),
          height: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List<Widget>.generate(
              10,
              dottedLine,
            ),
          ),
        );

      case StepStatus.inactive:
        return AnimatedContainer(
          duration: kThemeAnimationDuration,
          width: MediaQuery.of(context).size.width / (stepCount! * 1.7),
          height: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List<Widget>.generate(
              10,
              dottedLine,
            ),
          ),
        );

      default:
        return AnimatedContainer(
          duration: kThemeAnimationDuration,
          width: MediaQuery.of(context).size.width / (stepCount! * 1.7),
          height: 3,
          color: getColor(),
        );
    }
  }
}
