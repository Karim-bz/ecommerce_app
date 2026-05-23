import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/view/widgets/custom_button.dart';
import 'package:ecommerce_app/view/widgets/custom_button_social_media.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Welcome,", fontSize: 30),
                CustomText(text: "Sign up", fontSize: 18, color: primaryColor),
              ],
            ),
            CustomText(
              text: 'Sign in to continue',
              fontSize: 14,
              color: Colors.grey,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              text: 'Email',
              hintText: 'foulen@gmail.com',
              onSaved: (val) {},
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              text: 'Password',
              hintText: '*********',
              onSaved: (val) {},
            ),
            SizedBox(height: 10),
            CustomText(
              text: 'Forgot Password',
              fontSize: 14,
              alignment: Alignment.topRight,
            ),
            SizedBox(height: 20),
            CustomButton(text: "SIGN IN", onPress: () {}),
            SizedBox(height: 20),
            CustomText(text: "- OR -", alignment: Alignment.center),
            SizedBox(height: 40),
            CustomButtonSocialMedia(
              text: "Sign in with facebook",
              imagePath: 'assets/images/facebook.png',
            ),
            SizedBox(height: 20),
            CustomButtonSocialMedia(
              text: "Sign in with Google",
              imagePath: 'assets/images/google.png',
            ),
          ],
        ),
      ),
    );
  }
}
