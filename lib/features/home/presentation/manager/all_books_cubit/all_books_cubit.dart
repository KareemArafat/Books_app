import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homeRepo) : super(AllBooksCubitInitial());

  final HomeRepo homeRepo;

  getAllBooks() async {
    emit(AllBooksCubitLoading());
    var result = await homeRepo.getAllBooks();
    result.fold(
      (failure) {
        emit(AllBooksCubitFailure(errMess: failure.errMessage));
      },
      (books) {
        emit(AllBooksCubitSuccess(books: books));
      },
    );
  }
}
