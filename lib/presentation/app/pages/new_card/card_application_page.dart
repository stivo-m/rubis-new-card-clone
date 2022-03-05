import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/application%20/redux/view_models/new_card_view_model.dart';
import 'package:rubis_card_clone/domain/strings.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/widgets/user_information_widget.dart';
import 'package:rubis_card_clone/presentation/app/widgets/custom_app_bar.dart';

class CardApplicationPage extends StatelessWidget {
  CardApplicationPage({Key? key}) : super(key: key);

  final List<Widget> pages = <Widget>[
    UserInformationWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewCardViewModel>(
      converter: (Store<AppState> store) => NewCardViewModel.fromStore(store),
      builder: (BuildContext context, NewCardViewModel vm) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // app bar
              CustomAppBar(
                title: cardInfoText,
                stage: vm.stage,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: vm.pageController,
                    children: pages,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
