import 'package:bookly/features/home/persentation/views/widgets/feature_list_view_books.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/styles.dart';
import '../../../../../shared/components/constants.dart';
import 'newest_books_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kHomePagePadding),
                child: CustomAppBar(),
              ),
              const FeatureListViewBooks(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kHomePagePadding),
                child: Text(
                  'Best Seller',
                  style:
                      Styles.textStyle24.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHomePagePadding),
            child: NewestBooksListView(),
          ),
        ),
      ],
    );
  }
}
