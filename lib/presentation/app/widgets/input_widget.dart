import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rubis_card_clone/domain/enums.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.title,
    this.controller,
    this.subtitle,
    this.hintText,
    this.note,
    this.isFieldRequired = false,
    this.inputType = InputType.text,
    this.dropDownFields,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controller;
  final String title;
  final String? subtitle;
  final String? hintText;
  final String? note;
  final bool? isFieldRequired;
  final InputType? inputType;
  final List<String>? dropDownFields;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: inputType == InputType.phoneNumber
          ? const EdgeInsets.only(top: 15)
          : const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$title${isFieldRequired! ? '*' : ''}',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 18,
                ),
          ),
          if (subtitle != null) ...<Widget>[
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 13,
                  ),
            ),
          ],
          const SizedBox(
            height: 5,
          ),
          if (inputType == InputType.text)
            TextFormField(
              controller: controller,
              validator: isFieldRequired! ? validator : null,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(),
              ),
            ),
          if (inputType == InputType.phoneNumber)
            IntlPhoneField(
              validator: isFieldRequired! && controller!.text.isNotEmpty
                  ? validator
                  : null,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(),
              ),
              initialCountryCode: 'KE',
              countries: <String>['KE'],
              onChanged: (_) {},
            ),
          if (inputType == InputType.dropDown)
            DropdownButtonFormField<String>(
              validator: isFieldRequired! ? validator : null,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(),
              ),
              value: dropDownFields!.first,
              items: dropDownFields!
                  .map(
                    (String item) => DropdownMenuItem<String>(
                      child: Text(item),
                      value: item,
                    ),
                  )
                  .toList(),
              onChanged: (_) {},
            ),
          if (note != null) ...<Widget>[
            const SizedBox(
              height: 5,
            ),
            Text(
              'NOTE: $note',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11,
                  ),
            ),
          ],
        ],
      ),
    );
  }
}
