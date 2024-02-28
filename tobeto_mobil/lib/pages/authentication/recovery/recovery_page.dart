import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/auth_text.dart';
import 'package:tobeto_mobil/core/widgets/form_field/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/background/primary_background.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Image(
          image: AssetImage(logo),
          width: kToolbarHeight * 2,
        ),
      ),
      body: PrimaryBackgroundWidget(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
              child: Lottie.network(
                recoveryPageHeaderImage,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FormWidget(
                controller: emailController,
                labelText: authEmailLabel,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                ),
                validator: (value) =>
                    value != null ? "Field Can't be empty" : null,
                onChanged: (newValue) => emailController.text = newValue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(
                      AuthEventRecover(
                        email: emailController.text.trim(),
                      ),
                    );
              },
              child: const Text(recoverySendText),
            ),
          ],
        ),
      ),
    );
  }
}
