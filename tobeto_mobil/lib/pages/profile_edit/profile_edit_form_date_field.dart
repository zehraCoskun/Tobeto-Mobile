import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ProfileEditFormDateField extends StatefulWidget {
  const ProfileEditFormDateField({
    Key? key,
    this.initialValue,
    this.onSaved,
  }) : super(key: key);

  final DateTime? initialValue;
  final void Function(String? value)? onSaved;

  @override
  State<ProfileEditFormDateField> createState() =>
      _ProfileEditFormDateFieldState();
}

class _ProfileEditFormDateFieldState extends State<ProfileEditFormDateField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: widget.initialValue != null
          ? DateFormat('yyyy-MM-dd').format(widget.initialValue!)
          : "Doğum Tarihi",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          containerBasicShadow(),
        ],
      ),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              _selectDate(context);
            },
            icon: Icon(
              Icons.calendar_month_outlined,
              color: TobetoDarkColors.lacivert,
            ),
          ),
        ),
        onSaved: widget.onSaved,
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.tryParse(controller.text),
      firstDate: DateTime.now().subtract(
        const Duration(days: 36500),
      ), // 100 yıl önce
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(),
          child: child!,
        );
      },
    );

    if (date != null) {
      controller.text = DateFormat('yyyy-MM-dd').format(date);
    }
  }
}
