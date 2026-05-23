import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonSocialMedia extends StatelessWidget {
  final String text;
  final String imagePath;
  final void Function()? onPress;
  const CustomButtonSocialMedia({
    super.key,
    required this.text,
    required this.imagePath,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100,
        border: Border.all(width: 1, color: Colors.grey.shade400),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPress,
        child: Row(
          children: [
            Image.asset(imagePath, height: 25, width: 25),
            SizedBox(width: 20),
            CustomText(text: text),
          ],
        ),
      ),
    );
  }
}
