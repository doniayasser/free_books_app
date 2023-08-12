import 'package:flutter/cupertino.dart';

import '../../../../home/persentation/views/widgets/book_list_view_item.dart';

class SearchListBooks extends StatelessWidget {
  const SearchListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
