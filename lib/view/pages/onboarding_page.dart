import 'package:chat_app/core/constants/app_assets.dart';
import 'package:chat_app/core/constants/onboarding_constants.dart';
import 'package:chat_app/view/pages/phone_auth_page.dart';
import 'package:chat_app/view/widgets/onboarding_btn_widget.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bgImg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Image.asset(AppAssets.logoImg),
            Text(
              OnboardingConstants.onboardingQuote,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            OnBoardingBtn(
              txtColor: Colors.black,
              img: AppAssets.icGoogle,
              bgColor: Colors.white,
              label:
                  '${OnboardingConstants.signInWith + OnboardingConstants.google}',
              onPressed: () {},
            ),
            OnBoardingBtn(
              img: AppAssets.icFacebook,
              bgColor: Color(0xFF3B5998),
              label:
                  '${OnboardingConstants.signInWith + OnboardingConstants.fb}',
              onPressed: () {},
            ),
            OnBoardingBtn(
              img: AppAssets.icPhone,
              bgColor: Color(0xFFE6446E),
              label:
                  '${OnboardingConstants.signInWith + OnboardingConstants.phnNbr}',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneAuthPage()),
                );
              },
            ),
            SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 15),
                children: [
                  TextSpan(text: OnboardingConstants.agreeWith),
                  TextSpan(
                    text: OnboardingConstants.terms,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: OnboardingConstants.useYourData),
                  TextSpan(
                    text: OnboardingConstants.privacyPolicy,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
