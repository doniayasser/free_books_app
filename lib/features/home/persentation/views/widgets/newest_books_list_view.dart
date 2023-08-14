import 'package:bookly/features/home/persentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly/features/home/persentation/manager/newest_book_cubit/newest_book_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'book_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBookStates>(
        builder: (context, state) {
      if (state is NewestBookSuccess) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BookListViewItem(
                book: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBookFailure) {
        return CustomErrorMessage(errorMess: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
