import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:arqontac_app/src/features/authentication/screens/forget_password/forget_password_email/forget_password_email_screen.dart';
import 'package:arqontac_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Make selection!",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    "Select one of the options given bellow to reset your password.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: defaultSize,
                  ),
                  ForgetPasswordBtnWidget(
                      iconData: Icons.email_outlined,
                      title: "E-Mail",
                      subtitle: "Reset via E-Mail verification",
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (_) => const ForgetPasswordEmailScreen()));
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  ForgetPasswordBtnWidget(
                      iconData: Icons.email_outlined,
                      title: "Phone Number",
                      subtitle: "Reset via Phone verification",
                      onTap: () {}),
                ],
              ),
            ));
  }
}
