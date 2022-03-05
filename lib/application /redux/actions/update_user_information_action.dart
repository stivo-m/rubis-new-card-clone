import 'package:async_redux/async_redux.dart';
import 'package:rubis_card_clone/application%20/redux/actions/update_page_view_action.dart';
import 'package:rubis_card_clone/application%20/redux/state/app_state.dart';
import 'package:rubis_card_clone/domain/core/entities/user_information.dart';
import 'package:rubis_card_clone/domain/core/objects/email_address.dart';
import 'package:rubis_card_clone/domain/core/objects/name.dart';
import 'package:rubis_card_clone/domain/core/objects/phone_number.dart';
import 'package:rubis_card_clone/domain/enums.dart';

class UpdateUserInformationAction extends ReduxAction<AppState> {
  UpdateUserInformationAction({
    this.name,
    this.phoneNumber,
    this.identityType,
    this.idNumber,
    this.emailAddress,
    this.vehicleRegistration,
  });

  final EmailAddress? emailAddress;
  final String? idNumber;
  final IdentityType? identityType;
  final Name? name;
  final PhoneNumber? phoneNumber;
  final String? vehicleRegistration;

  @override
  AppState? reduce() {
    final UserInformation? oldData = state.cardInformation?.userInformation;

    final AppState? newState =
        state.copyWith.cardInformation?.userInformation?.call(
      cardHolderName: name ?? oldData?.cardHolderName,
      emailAddress: emailAddress ?? oldData?.emailAddress,
      identificationNumber: idNumber ?? oldData?.identificationNumber,
      identityType: identityType ?? oldData?.identityType,
      phoneNumber: phoneNumber ?? oldData?.phoneNumber,
      vehicleRegNumber: vehicleRegistration ?? oldData?.vehicleRegNumber,
    );

    store.dispatch(
      UpdatePageViewAction(pageIndex: 1),
    );

    return newState;
  }
}
