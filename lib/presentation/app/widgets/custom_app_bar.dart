import 'package:flutter/material.dart';
import 'package:rubis_card_clone/presentation/app/widgets/app_bar_clipper.dart';
import 'package:rubis_card_clone/domain/enums.dart';
import 'package:rubis_card_clone/presentation/app/widgets/stepper/custom_stepper.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.stage,
    this.onBackTapped,
  }) : super(key: key);

  final VoidCallback? onBackTapped;
  final String title;
  final CardInformationStage stage;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarClipper(),
      child: Container(
        width: double.maxFinite,
        height: 180,
        color: Color(0xff00A15D),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Center(
              child: Text(
                'Step ${stage.index + 1} of ${CardInformationStage.values.length}',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white70,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            // stepper widget
            CustomStepper(),
          ],
        ),
      ),
    );
  }
}
