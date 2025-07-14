import 'package:bookly_app/features/details/data/repos/details_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fav_books_state.dart';

class FavBooksCubit extends Cubit<FavBooksState> {
  FavBooksCubit(this._detailsRepo) : super(FavBooksInitial());

  final DetailsRepo _detailsRepo;

  void addFavBook({required BookModel book}) {
    _detailsRepo.addFavBook(book: book);
    emit(FavBooksSuccess());
  }
}
