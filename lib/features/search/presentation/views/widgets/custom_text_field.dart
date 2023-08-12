import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        enabledBorder: outlineTextBorder(),
        focusedBorder: outlineTextBorder(),
      ),
    );
  }

  OutlineInputBorder outlineTextBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
