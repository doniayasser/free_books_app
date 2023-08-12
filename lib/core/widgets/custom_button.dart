import 'package:flutter/material.dart';

import '../helper/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.titleColor,
    this.borderRadius,
    this.fontWeight,
  });
  final String text;
  final Color backgroundColor;
  final Color titleColor;
  final BorderRadiusGeometry? borderRadius;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color: titleColor, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
