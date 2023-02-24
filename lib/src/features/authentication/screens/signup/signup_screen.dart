import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:arqontac_app/src/widgets/form/form_header_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: welcomeScreenImage,
                title: signUpTitle,
                subtitle: signUpSubtitle,
              ),
              const SignUpFormWidget(),
              Column(
                children: [
                  const Text("OR"),
                  const SizedBox(
                    height: formHeight - 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(googleLogoImage),
                        width: 20,
                      ),
                      label: const Text(signInWithGoogle),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: alreadyHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyLarge),
                      const TextSpan(text: "Login")
                    ])),
                  )
                ],
              )
            ],
          )),
    ));
  }
}
