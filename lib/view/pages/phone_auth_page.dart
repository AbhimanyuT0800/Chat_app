import 'package:chat_app/view/pages/otp_verification_page.dart';
import 'package:chat_app/view/widgets/onboarding_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({super.key});

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
              'Enter your phone\n number',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntlPhoneField(
                  disableLengthCheck: true,
                  initialCountryCode: 'IN',
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD5CFD0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Text('  Fliq will send you a text with a verification code.'),
              ],
            ),
            Spacer(),
            OnBoardingBtn(
              label: 'NEXT',
              bgColor: Color(0xFFE6446E),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpVerificationPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
