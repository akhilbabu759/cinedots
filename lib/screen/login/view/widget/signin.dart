

import 'package:flutter/material.dart';

import 'form/login_form.dart';

class Signi extends StatelessWidget {
  const Signi({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
      // textFieldGap,
      LoginFrom(width: width, height: height),
      SizedBox(
        height: height * 0.03,
      ),
      RichText(
        text: TextSpan(
          text: "Don't have account? ",
          style: const TextStyle(color: Colors.amber),
          children: <TextSpan>[
            TextSpan(
              // recognizer: TapGestureRecognizer()
              //   ..onTap = () {
              //     Get.to(SignupPage());
            
                // },
              text: 'Signup',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    ],
                );
  }
}
