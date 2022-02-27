import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:rubis_card_clone/application%20/redux/actions/update_user_information_action.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/application%20/redux/view_models/new_card_view_model.dart';
import 'package:rubis_card_clone/domain/core/objects/email_address.dart';
import 'package:rubis_card_clone/domain/core/objects/name.dart';
import 'package:rubis_card_clone/domain/core/objects/phone_number.dart';
import 'package:rubis_card_clone/domain/core/validators/validators.dart';
import 'package:rubis_card_clone/domain/enums.dart';
import 'package:rubis_card_clone/domain/strings.dart';
import 'package:rubis_card_clone/presentation/app/widgets/button.dart';
import 'package:rubis_card_clone/presentation/app/widgets/input_widget.dart';

class UserInformationWidget extends StatelessWidget {
  UserInformationWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController idNumberController = TextEditingController();
  final TextEditingController vehicleRegistrationController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, NewCardViewModel>(
      converter: (Store<AppState> store) => NewCardViewModel.fromStore(store),
      builder: (BuildContext context, NewCardViewModel vm) {
        return Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      // Contact information
                      InputWidget(
                        title: cardHolderName,
                        subtitle: toBeImprintedOnCardText,
                        hintText: enterDetailsText,
                        isFieldRequired: true,
                        controller: cardNameController,
                        validator: (String? value) => !checkIfValidName(value!)
                            ? 'Card holder name is required'
                            : null,
                      ),

                      InputWidget(
                        title: mobileNumberText,
                        subtitle: aVerificationCodeWillBeSent,
                        isFieldRequired: true,
                        inputType: InputType.phoneNumber,
                        controller: phoneNumberController,
                      ),

                      InputWidget(
                        title: idTypeText,
                        isFieldRequired: true,
                        inputType: InputType.dropDown,
                        dropDownFields: IdentityType.values
                            .map((IdentityType identityType) =>
                                identityType.name)
                            .toList(),
                      ),

                      InputWidget(
                        title: nationalIDText,
                        hintText: enterDetailsText,
                        isFieldRequired: true,
                        controller: idNumberController,
                        validator: (String? value) =>
                            value!.length < 7 ? 'Enter a valid number' : null,
                      ),

                      InputWidget(
                        title: vehicleRegistrationText,
                        subtitle: toBeImprintedOnCardText,
                        hintText: enterDetailsText,
                        note: vehicleRegistrationDescription,
                        controller: vehicleRegistrationController,
                      ),

                      InputWidget(
                        title: emailAddressText,
                        hintText: activeEmailText,
                        controller: emailController,
                        validator: (String? value) => checkIfValidEmail(value!)
                            ? null
                            : 'Enter a valid email address',
                      ),
                    ],
                  ),
                ),
              ),
              Button(
                text: proceedText,
                onTap: () {
                  bool isFormValid = formKey.currentState!.validate();
                  if (isFormValid) {
                    // save the details
                    // update the current state
                    StoreProvider.dispatch(
                      context,
                      UpdateUserInformationAction(
                        name: Name.withValue(input: cardNameController.text),
                        idNumber: idNumberController.text,
                        vehicleRegistration: vehicleRegistrationController.text,
                        emailAddress: emailController.text.isNotEmpty
                            ? EmailAddress.withValue(
                                input: emailController.text)
                            : null,
                        phoneNumber: phoneNumberController.text.isNotEmpty
                            ? PhoneNumber.withValue(
                                input: phoneNumberController.text)
                            : null,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
