import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  getNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.getNewestBooks();

    result.fold(
      (l) => emit(NewestBooksFailure(errMess: l.errMessage)),
      (r) => emit(NewestBooksSuccess(books: r)),
    );
  }
}
