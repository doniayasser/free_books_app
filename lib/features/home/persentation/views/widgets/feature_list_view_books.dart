import 'package:bookly/features/home/persentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/persentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeatureListViewBooks extends StatelessWidget {
  const FeatureListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBookStates>(
      builder: (context, state) {
        if(state is FeaturedBookSuccess)
        {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: CustomBookImage(),
                );
              },
            ),
          );
        }
        else if(state is FeaturedBookFailure)
          {
            
          }


      },
    );
  }
}
