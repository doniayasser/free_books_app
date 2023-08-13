import 'package:bookly/core/helper/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMess});
  final String errorMess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(child: Text("Error: $errorMess",style: Styles.textStyle14,)),
    );
  }
}

