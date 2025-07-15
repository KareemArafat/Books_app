import 'package:bookly_app/features/details/data/repos/details_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._detailsRepo) : super(SimilarBooksInitial());
  final DetailsRepo _detailsRepo;

  getSimilarBooks({required String category, int index = 0}) async {
    emit(SimilarBooksLoading());

    var result = await _detailsRepo.getSimilarBooks(
      category: category,
      index: index,
    );
    if (!isClosed) {
      result.fold(
        (l) => emit(SimilarBooksFailure(errMess: l.errMessage)),
        (r) => emit(SimilarBooksSuccess(books: r)),
      );
    }
  }
}
