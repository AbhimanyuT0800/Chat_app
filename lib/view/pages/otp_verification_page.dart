import 'package:chat_app/view/widgets/onboarding_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back, size: 24)),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ), // ✅ Fixed this line
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              'Enter your verification \ncode',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: '+911111111111. '),
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                OTPTextField(
                  fieldStyle: FieldStyle.box,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 45,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,

                  onChanged: (pin) {
                    // Handle on change
                  },
                  onCompleted: (pin) {},
                ),

                SizedBox(height: 16),
                Text('Didn’t get anything? No worries, let’s try again.'),
                Text(
                  'Resent',
                  style: TextStyle(
                    color: Color(0xFF4A90E2),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            OnBoardingBtn(
              label: 'NEXT',
              bgColor: Color(0xFFE6446E),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
