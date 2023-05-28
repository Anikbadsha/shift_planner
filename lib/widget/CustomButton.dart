import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onTap;

  const CustomButton(this.buttonText,
      {super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 36,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF89818)),
        child: Center(
          child: Text(
            "$buttonText",
            style: TextStyle(

                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}