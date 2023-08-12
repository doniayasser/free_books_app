import 'package:bookly/features/home/persentation/views/widgets/suggestion_books_section.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'books_action_buttons.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomAppBarBookDetails(),
              SizedBox(
                height: 16,
              ),
              BookDetailsSection(),
              BooksActionButtons(),
              Expanded(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SuggestionBooksSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
