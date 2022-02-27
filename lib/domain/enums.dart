enum IdentityType {
  nationalID,
  passportID,
  unknown,
}

extension IdentityTypeExt on IdentityType {
  String get name {
    switch (this) {
      case IdentityType.nationalID:
        return 'National ID';
      case IdentityType.passportID:
        return 'Passport';
      default:
        return 'UNKNOWN';
    }
  }
}

enum CardInformationStage {
  collectingBioInformation,
  collectingUsageInformation,
  collectingPickupLocation,
  confirmation,
  validateOTP
}

enum InputType {
  text,
  phoneNumber,
  dropDown,
}

enum StepStatus {
  active,
  inactive,
  completed,
  error,
  unknown,
}
