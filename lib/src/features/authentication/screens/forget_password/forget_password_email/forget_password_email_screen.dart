import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/authentication/screens/forget_password/forget_password_otp/forget_password_otp_screen.dart';
import 'package:arqontac_app/src/widgets/form/form_header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: defaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: "Forget Password",
                  subtitle:
                      "Select one of the options given bellow to reset your password.",
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: formHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text("Email"),
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail_outline_rounded)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) =>
                                      const ForgetPasswordOtpScreen()));
                        },
                        child: const Center(child: Text("Next")))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
