import '../../../data/models/book_model/book_model.dart';

abstract class NewestBookStates {
  const NewestBookStates();
}

class NewestBookInitial extends NewestBookStates {}

class NewestBookLoading extends NewestBookStates {}

class NewestBookSuccess extends NewestBookStates {
  final List<BookModel> books;
  const NewestBookSuccess(this.books);
}

class NewestBookFailure extends NewestBookStates {
  final String errMessage;
  const NewestBookFailure(this.errMessage);
}
