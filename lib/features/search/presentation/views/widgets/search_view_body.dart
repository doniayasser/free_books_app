import 'package:bookly/features/search/presentation/views/widgets/search_list_books.dart';
import 'package:bookly/shared/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/styles.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: CustomTextField(),
            ),
            const SizedBox(
              height: 25,
            ),
            Opacity(
              opacity: 0.6,
              child: Text(
                'Available books',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Expanded(child: SearchListBooks()),
          ],
        ),
      ),
    );
  }
}
