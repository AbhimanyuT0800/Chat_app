import 'package:chat_app/core/constants/auth_constants.dart';
import 'package:chat_app/core/constants/onboarding_constants.dart';
import 'package:chat_app/model/otp_sent_model.dart';
import 'package:chat_app/services/api_services.dart';
import 'package:chat_app/view/pages/otp_verification_page.dart';
import 'package:chat_app/view/widgets/onboarding_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneAuthPage extends StatelessWidget {
  PhoneAuthPage({super.key});

  final phnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back, size: 24)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              AuthConstants.enterPhnNbr,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntlPhoneField(
                  controller: phnController,
                  disableLengthCheck: true,
                  initialCountryCode: 'IN',
                  decoration: InputDecoration(
                    labelText: OnboardingConstants.phnNbr,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFD5CFD0)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Text(AuthConstants.weSentACode),
              ],
            ),
            Spacer(),
            OnBoardingBtn(
              label: AuthConstants.next,
              bgColor: Color(0xFFE6446E),
              onPressed: () async {
                final OtpSentModel result = await ApiServices().sentOtp(
                  phn: '+91${phnController.text}',
                );

                result.status
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpVerificationPage(
                            phnNumber: '+91${phnController.text}',
                          ),
                        ),
                      )
                    : SnackBar(content: Text('Somthing went wrong.....'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
