import 'package:bookly/core/helper/app_routes.dart';
import 'package:bookly/core/helper/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 25),
              child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle24
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Opacity(
                      opacity: 0.7,
                      child: Text(
                        book.volumeInfo.authors![0],
                        style: Styles.textStyle14,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Free',
                          style: Styles.textStyle18,
                        ),
                        BookRating(
                          rating: book.volumeInfo.averageRating ?? 0,
                          ratingCount: book.volumeInfo.ratingsCount ?? 0,
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
