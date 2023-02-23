import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/authentication/screens/login/login_footer_widger.dart';
import 'package:arqontac_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:arqontac_app/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeaderWidget(size: size),
                  const LoginForm(),
                  const LoginFooterWidget()
                ],
              )),
        ),
      ),
    );
  }
}
