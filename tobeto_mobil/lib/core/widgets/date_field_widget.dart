import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class DateFieldWidget extends StatefulWidget {
  const DateFieldWidget({
    Key? key,
    this.initialValue,
    required this.onSaved,
    this.formKey,
  }) : super(key: key);

  final GlobalKey? formKey;
  final DateTime? initialValue;
  final void Function(String? value) onSaved;

  @override
  State<DateFieldWidget> createState() => _DateFieldWidgetState();
}

class _DateFieldWidgetState extends State<DateFieldWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.text = widget.initialValue == null
        ? "Doğum Tarihi"
        : widget.initialValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextFormField(
        key: widget.formKey,
        readOnly: true,
        controller: controller,
        onSaved: widget.onSaved,
        decoration: InputDecoration(
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
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
      controller.text = DateFormat('dd/MM/yyyy').format(date);
    }
  }
}
