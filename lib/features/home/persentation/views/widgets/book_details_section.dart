import 'package:flutter/cupertino.dart';

import '../../../../../core/helper/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          // child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: 0.65,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
