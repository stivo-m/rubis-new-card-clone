import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:rubis_card_clone/domain/core/failures/value_failures.dart';
import 'package:rubis_card_clone/domain/core/validators/validators.dart';

class EmailAddress {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress.withValue({required String input}) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': value.getOrElse(() => '').toString(),
    };
  }

  factory EmailAddress.fromMap(Map<String, dynamic> map) {
    return EmailAddress.withValue(
      input: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  String? get val => value.getOrElse(() => '');

  factory EmailAddress.fromJson(String source) =>
      EmailAddress.fromMap(json.decode(source) as Map<String, dynamic>);
}
