import 'package:dartz/dartz.dart';
import 'package:rubis_card_clone/domain/core/failures/value_failures.dart';

bool checkIfValidEmail(String input) {
  const String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  return RegExp(emailRegex).hasMatch(input);
}

bool checkIfValidPhoneNumber(String input) {
  const String phoneNumberRegex = r'(^(\+254|0)[0-9]\d{8}$)';
  return RegExp(phoneNumberRegex).hasMatch(input);
}

bool checkIfValidName(String input) {
  if (input.length < 3) return false;

  if (input.split(' ').length < 1) return false;

  return true;
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (checkIfValidEmail(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (checkIfValidPhoneNumber(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (checkIfValidName(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidNameField(failedValue: input));
  }
}
