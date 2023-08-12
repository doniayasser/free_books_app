import 'package:bookly/features/home/persentation/views/widgets/suggestion_list_view_books.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/helper/styles.dart';

class SuggestionBooksSection extends StatelessWidget {
  const SuggestionBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SuggestionListViewBooks(),
        ),
      ],
    );
  }
}
