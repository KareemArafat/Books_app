import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
   final HomeRepo homeRepo;

  getNewestBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.getSimilarBooks(category: category);

    result.fold(
      (l) => emit(SimilarBooksFailure(errMess: l.errMessage)),
      (r) => emit(SimilarBooksSuccess(books: r)),
    );
  }
}
