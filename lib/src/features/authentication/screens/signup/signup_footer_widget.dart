import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          onPressed: () {
            Navigator.pushReplacement(context,
                CupertinoPageRoute(builder: (_) => const LoginScreen()));
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: alreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge),
            const TextSpan(text: "Login", style: TextStyle(color: Colors.blue))
          ])),
        )
      ],
    );
  }
}
