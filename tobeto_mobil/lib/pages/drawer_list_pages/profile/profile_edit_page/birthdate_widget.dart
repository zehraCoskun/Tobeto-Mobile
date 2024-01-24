import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/core/widgets/basic_shadow.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

//şu an için sadece ekledi, düzenlenecek
class BirthDateWidget extends StatelessWidget {
  BirthDateWidget({super.key});
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [basicShadow()],
      ),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  _selectDate(context);
                },
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: TobetoDarkColors.lacivert,
                )),
            Text(
              "Doğum Tarihi : ",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              DateFormat('dd/MM/yyyy').format(_selectedDate),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 36500)), // 100 yıl önce
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
    }
  }
}
