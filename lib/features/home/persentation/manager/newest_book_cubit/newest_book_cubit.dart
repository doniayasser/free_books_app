import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/persentation/manager/newest_book_cubit/newest_book_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBookStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBookFailure(failure.errMessage));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
