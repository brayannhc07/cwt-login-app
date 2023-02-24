import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
        child: Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person_outline_rounded)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Email"), prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Phone Number"), prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text("Password"), prefixIcon: Icon(Icons.fingerprint)),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Center(
                  child: Text("SIGN UP"),
                ))
          ]),
        ));
  }
}
