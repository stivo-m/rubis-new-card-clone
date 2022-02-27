import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:rubis_card_clone/domain/core/failures/value_failures.dart';
import 'package:rubis_card_clone/domain/core/validators/validators.dart';

class PhoneNumber {
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber.withValue({required String input}) {
    return PhoneNumber._(
      validatePhoneNumber(input),
    );
  }

  const PhoneNumber._(this.value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': value.getOrElse(() => '').toString()
    };
  }

  factory PhoneNumber.fromMap(Map<String, dynamic> map) {
    return PhoneNumber.withValue(input: map['phoneNumber'] as String);
  }

  String toJson() => json.encode(toMap());
  String? get val => value.getOrElse(() => '');

  factory PhoneNumber.fromJson(String source) =>
      PhoneNumber.fromMap(json.decode(source) as Map<String, dynamic>);
}
