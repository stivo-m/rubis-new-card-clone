import 'package:flutter/material.dart';
import 'package:rubis_card_clone/domain/enums.dart';
import 'package:rubis_card_clone/presentation/app/widgets/stepper/step_item.dart';
import 'package:rubis_card_clone/presentation/app/widgets/stepper/step_separator.dart';

class StepWidget extends StatelessWidget {
  const StepWidget({
    Key? key,
    this.totalSteps,
    this.stepStatus,
    this.isLast = false,
  }) : super(key: key);

  final int? totalSteps;
  final StepStatus? stepStatus;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        StepSeparator(
          stepStatus: stepStatus,
          stepCount: totalSteps,
        ),
        const SizedBox(
          width: 2,
        ),
        StepItem(
          stepStatus: stepStatus,
        ),
        if (isLast!) ...<Widget>[
          const SizedBox(
            width: 2,
          ),
          StepSeparator(
            stepStatus: StepStatus.completed,
            stepCount: totalSteps,
          ),
        ]
      ],
    );
  }
}
