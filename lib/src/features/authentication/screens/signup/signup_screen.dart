import 'package:arqontac_app/src/constants/image_strings.dart';
import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/constants/text_strings.dart';
import 'package:arqontac_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:arqontac_app/src/features/authentication/screens/signup/signup_footer_widget.dart';
import 'package:arqontac_app/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:arqontac_app/src/widgets/form/form_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpController(),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: signUpTitle,
                  subtitle: signUpSubtitle,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget()
              ],
            )),
      )),
    );
  }
}
