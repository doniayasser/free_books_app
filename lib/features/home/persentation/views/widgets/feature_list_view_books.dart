import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/persentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/persentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/custom_error_message.dart';
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
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        }
        else if(state is FeaturedBookFailure)
          {
            return CustomErrorMessage(errorMess: state.errMessage);
          }
        else
          {
            return const CustomLoadingIndicator();
          }

      },
    );
  }
}
