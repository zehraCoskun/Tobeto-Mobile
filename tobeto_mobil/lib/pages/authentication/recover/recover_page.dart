import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_bloc.dart';
import 'package:tobeto_mobil/api/bloc/auth_bloc/auth_event.dart';
import 'package:tobeto_mobil/constants/image_text.dart';
import 'package:tobeto_mobil/constants/pages/auth_text.dart';
import 'package:tobeto_mobil/core/widgets/form_field/form_widget.dart';
import 'package:tobeto_mobil/core/widgets/background/primary_background.dart';
import 'package:tobeto_mobil/utils/validators/auth_validator.dart';

class RecoverPage extends StatefulWidget {
  const RecoverPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RecoverPage> createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  late GlobalKey<FormState> _formKey;
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

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
        leading: IconButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEventInitialize());
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
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
              child: Form(
                key: _formKey,
                child: FormWidget(
                  controller: emailController,
                  labelText: authEmailLabel,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                  validator: (value) => AuthValidator.validateEmail(value),
                  onSaved: (value) => emailController.text = value ?? "",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _formKey.currentState!.save();
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
