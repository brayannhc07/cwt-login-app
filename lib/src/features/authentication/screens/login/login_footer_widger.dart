import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: formHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(googleLogoImage),
                width: 20,
              ),
              onPressed: () {},
              label: const Text(signInWithGoogle)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                CupertinoPageRoute(builder: (_) => const SignUpScreen()));
          },
          child: Text.rich(TextSpan(
              text: dontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(text: "Sign up", style: TextStyle(color: Colors.blue))
              ])),
        )
      ],
    );
  }
}
