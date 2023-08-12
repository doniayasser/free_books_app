import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksActionButtons extends StatelessWidget {
  const BooksActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99&',
              backgroundColor: Colors.white,
              titleColor: Colors.black,
              fontWeight: FontWeight.w800,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free preview',
              backgroundColor: Color(0xffEF8262),
              titleColor: Colors.white,
              fontWeight: FontWeight.normal,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
