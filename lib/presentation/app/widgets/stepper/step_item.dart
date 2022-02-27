// Step item
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/domain/enums.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    Key? key,
    this.stepStatus = StepStatus.inactive,
    this.radius = 20,
  }) : super(key: key);

  final double? radius;
  final StepStatus? stepStatus;

  @override
  Widget build(BuildContext context) {
    Color getStepColor() {
      switch (this.stepStatus) {
        case StepStatus.active:
          return Colors.white;
        case StepStatus.inactive:
          return Colors.white60;
        case StepStatus.completed:
          return Theme.of(context).colorScheme.tertiaryContainer;
        default:
          return Theme.of(context).colorScheme.error;
      }
    }

    switch (this.stepStatus) {
      case StepStatus.active:
        return AnimatedContainer(
          duration: kThemeAnimationDuration,
          height: radius,
          width: radius,
          decoration: BoxDecoration(
            color: getStepColor().withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: AnimatedContainer(
              duration: kThemeAnimationDuration,
              height: radius! / 2,
              width: radius! / 2,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: getStepColor(),
                shape: BoxShape.circle,
              ),
            ),
          ),
        );

      case StepStatus.inactive:
        return Container(
          height: radius! / 2,
          width: radius! / 2,
          decoration: BoxDecoration(
            color: getStepColor(),
            shape: BoxShape.circle,
          ),
        );
      default:
        return AnimatedContainer(
          duration: kThemeAnimationDuration,
          height: radius,
          width: radius,
          decoration: BoxDecoration(
            color: getStepColor(),
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Icon(
            Icons.check,
            color: Colors.white,
            size: radius! / 1.6,
          )),
        );
    }
  }
}
