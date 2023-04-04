import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SignUpController>(context);
    final _formKey = GlobalKey<FormState>();

    return Container(
        padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text("Email"), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text("Phone Number"), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text("Password"), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    controller.registerUser(controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: const Center(
                  child: Text("SIGN UP"),
                ))
          ]),
        ));
  }
}
