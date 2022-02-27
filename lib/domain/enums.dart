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
