import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_bloc.dart';
import 'package:tobeto_mobil/api/bloc/calendar_bloc/calendar_event.dart';
import 'package:tobeto_mobil/models/calendar/event_model.dart';

class CalendarEventPage extends StatefulWidget {
  const CalendarEventPage({
    Key? key,
    this.event,
  }) : super(key: key);

  final EventModel? event;

  @override
  State<CalendarEventPage> createState() => _CalendarEventPageState();
}

class _CalendarEventPageState extends State<CalendarEventPage> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(
        const Duration(hours: 2),
      );
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        actions: buildEditingActions(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildTitle(),
              buildDateTimePickers(),
            ],
          ),
        ),
      ),
    );
  }

  Future saveForm() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final event = EventModel(
        title: titleController.text,
        description: "Description",
        from: fromDate,
        to: toDate,
        isAllDay: false,
      );

      context.read<CalendarBloc>().add(CalendarEventCreate(event: event));
    }
  }

  List<Widget> buildEditingActions() {
    return [
      ElevatedButton.icon(
        onPressed: saveForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        icon: const Icon(Icons.done),
        label: const Text("SAVE"),
      ),
    ];
  }

  Widget buildTitle() {
    return TextFormField(
      style: const TextStyle(fontSize: 24),
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        disabledBorder: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(),
        errorBorder: UnderlineInputBorder(),
        hintText: "Add Title",
      ),
      validator: (value) {
        return value != null && value.isEmpty ? "Title cannot be empty" : null;
      },
      onSaved: (value) {},
    );
  }

  Widget buildDateTimePickers() {
    return Column(
      children: <Widget>[
        buildFrom(),
        buildTo(),
      ],
    );
  }

  Widget buildFrom() {
    return buildHeader(
      header: "FROM",
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: buildDropdownField(
              text: DateFormat.yMMMEd().format(fromDate),
              onClicked: () => pickFromDateTime(pickDate: true),
            ),
          ),
          Expanded(
            child: buildDropdownField(
              text: DateFormat.Hm().format(fromDate),
              onClicked: () => pickFromDateTime(pickDate: false),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTo() {
    return buildHeader(
      header: "TO",
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: buildDropdownField(
              text: DateFormat.yMMMEd().format(toDate),
              onClicked: () => pickToDateTime(pickDate: true),
            ),
          ),
          Expanded(
            child: buildDropdownField(
              text: DateFormat.Hm().format(toDate),
              onClicked: () => pickToDateTime(pickDate: false),
            ),
          ),
        ],
      ),
    );
  }

  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fromDate, pickDate: pickDate);

    if (date == null) return;

    if (date.isAfter(toDate)) {
      toDate = DateTime(
        date.year,
        date.month,
        date.day,
        toDate.hour,
        toDate.minute,
      );
    }

    setState(() {
      fromDate = date;
    });
  }

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      fromDate,
      pickDate: pickDate,
      firstDate: pickDate ? fromDate : null,
    );

    if (date == null) return;

    setState(() {
      toDate = date;
    });
  }

  Future pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        firstDate: firstDate ?? DateTime.now(),
        lastDate: DateTime(2101),
      );

      if (date == null) return null;

      final time = Duration(
        hours: initialDate.hour,
        minutes: initialDate.minute,
      );

      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );

      if (timeOfDay == null) return null;

      final date = DateTime(
        initialDate.year,
        initialDate.month,
        initialDate.day,
      );

      final time = Duration(
        hours: timeOfDay.hour,
        minutes: timeOfDay.minute,
      );

      return date.add(time);
    }
  }

  Widget buildHeader({
    required String header,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          header,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        child,
      ],
    );
  }

  Widget buildDropdownField({
    required String text,
    required VoidCallback onClicked,
  }) {
    return ListTile(
      title: Text(text),
      trailing: const Icon(Icons.arrow_drop_down),
      onTap: onClicked,
    );
  }
}
