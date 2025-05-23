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
            image: AssetImage('assets/img/img_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Image.asset('assets/icons/logo.png'),
            Text(
              'Connect. Meet. Love.\n With Fliq Dating',
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
              img: 'assets/icons/ic_google.png',
              bgColor: Colors.white,
              label: 'Sign in with Google',
              onPressed: () {},
            ),
            OnBoardingBtn(
              img: 'assets/icons/ic_facebook.png',
              bgColor: Color(0xFF3B5998),
              label: 'Sign in with Facebook',
              onPressed: () {},
            ),
            OnBoardingBtn(
              img: 'assets/icons/ic_phone.png',
              bgColor: Color(0xFFE6446E),
              label: 'Sign in with phone number',
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
                  TextSpan(text: 'By signing up, you agree to our '),
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: ' See how we \n use your data in our '),
                  TextSpan(
                    text: 'Privacy Policy',
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
