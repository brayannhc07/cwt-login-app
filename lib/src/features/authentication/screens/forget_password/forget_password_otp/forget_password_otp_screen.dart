import 'package:arqontac_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordOtpScreen extends StatelessWidget {
  const ForgetPasswordOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CO\nDE",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 80),
              ),
              Text("Verification",
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Enter the verification code sent at support@example.com",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              OtpTextField(
                numberOfFields: 6,
                filled: true,
                fillColor: Colors.black.withOpacity(0.1),
                mainAxisAlignment: MainAxisAlignment.center,
                onSubmit: (code) => print("OTP is $code"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text("Next"),
                  ))
            ],
          )),
    ));
  }
}
