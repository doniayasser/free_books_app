import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SuggestionListViewBooks extends StatelessWidget {
  const SuggestionListViewBooks({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            // child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
