import 'package:bookly/core/helper/app_routes.dart';
import 'package:bookly/core/helper/styles.dart';
import 'package:bookly/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

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
            AspectRatio(
              aspectRatio: 1.9 / 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/test_image.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle24
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'J.K. Rowling',
                        style: Styles.textStyle14,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 &',
                          style: Styles.textStyle18,
                        ),
                        BookRating(),
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
