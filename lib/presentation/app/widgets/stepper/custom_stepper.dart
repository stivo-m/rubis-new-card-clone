import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/application%20/redux/view_models/new_card_view_model.dart';
import 'package:rubis_card_clone/domain/enums.dart';
import 'package:rubis_card_clone/presentation/app/widgets/stepper/step_widget.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewCardViewModel>(
      converter: (Store<AppState> store) => NewCardViewModel.fromStore(store),
      builder: (BuildContext context, NewCardViewModel vm) {
        return Container(
          height: 30,
          width: double.maxFinite,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List<Widget>.generate(
                  CardInformationStage.values.length,
                  (int index) {
                    print(
                        'Index: $index and Current stage index: ${vm.stage.index}');
                    // set previous steps to completed if index > 0
                    if (index < vm.stage.index) {
                      return StepWidget(
                        stepStatus: StepStatus.completed,
                        totalSteps: CardInformationStage.values.length,
                        isLast: index == 4,
                      );
                    }

                    // set all other steps after the active one to inactive
                    if (index > vm.stage.index) {
                      return StepWidget(
                        stepStatus: StepStatus.inactive,
                        totalSteps: CardInformationStage.values.length,
                        isLast: index == 4,
                      );
                    }

                    // set current step to active
                    return StepWidget(
                      stepStatus: StepStatus.active,
                      totalSteps: CardInformationStage.values.length,
                      isLast: index == 4,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
