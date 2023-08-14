import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBookStates {
  const FeaturedBookStates();
}

class FeaturedBookInitial extends FeaturedBookStates {}

class FeaturedBookLoading extends FeaturedBookStates {}

class FeaturedBookSuccess extends FeaturedBookStates {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}

class FeaturedBookFailure extends FeaturedBookStates {
  final String errMessage;
  const FeaturedBookFailure(this.errMessage);
}
