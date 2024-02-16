import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/date_field_widget.dart';
import 'package:tobeto_mobil/pages/profile_edit/profile_edit_form_field.dart';

class ProfileEditFormDateField extends StatelessWidget {
  const ProfileEditFormDateField({
    Key? key,
    this.initialValue,
    this.onSaved,
  }) : super(key: key);

  final DateTime? initialValue;
  final void Function(String? value)? onSaved;

  @override
  Widget build(BuildContext context) {
    return ProfileEditFormField(
      onSaved: onSaved,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: DateFieldWidget(
          initialValue: initialValue,
        ),
      ),
    );
  }
}
