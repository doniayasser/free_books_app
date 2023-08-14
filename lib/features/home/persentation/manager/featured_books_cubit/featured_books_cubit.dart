import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/persentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBookStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
