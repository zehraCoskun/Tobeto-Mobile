import 'package:flutter/material.dart';
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
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildEditingActions() {
    return [
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {},
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
        hintText: "Add Title",
      ),
      validator: (value) {
        return value != null && value.isEmpty ? "Title cannot be empty" : null;
      },
      onSaved: (value) {},
    );
  }
}
