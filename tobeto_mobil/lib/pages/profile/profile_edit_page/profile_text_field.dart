import 'package:flutter/material.dart';
import 'package:tobeto_mobil/pages/profile/profile_shadow.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    required this.labelText,
    required this.valueIsEmpty,
    this.icon,
  });

  final String labelText;
  final String valueIsEmpty;

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [ProfileShadow()]),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          icon: icon,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return valueIsEmpty;
          }
          return null;
        },
      ),
    );
  }
}

class OptionalProfileTextField extends StatelessWidget {
  const OptionalProfileTextField({
    super.key,
    required this.labelText,
    this.icon,
    this.showDropDown = false,
  });
  final String labelText;
  final bool showDropDown;

  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [ProfileShadow()]),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: labelText,
                icon: icon,
              ),
            ),
          ),
          if (showDropDown)
            DropdownButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: TobetoDarkColors.lacivert,
              ),
              dropdownColor: TobetoDarkColors.lacivert,
              onChanged: (String? newValue) {},
              items: <String>[
                "Flutter",
                "iOS",
                "Kotlin",
                "React Native",
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
