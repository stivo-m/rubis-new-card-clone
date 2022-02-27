import 'package:dartz/dartz.dart';
import 'package:rubis_card_clone/domain/core/failures/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const String phoneNumberRegex = r'(^(\+254|0)[0-9]\d{8}$)';
  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (input.length > 3) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidNameField(failedValue: input));
  }
}
