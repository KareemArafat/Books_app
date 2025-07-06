part of 'all_books_cubit.dart';

@immutable
sealed class AllBooksState {}

final class AllBooksCubitInitial extends AllBooksState {}

final class AllBooksCubitLoading extends AllBooksState {}

final class AllBooksCubitFailure extends AllBooksState {
  final String errMess;
  AllBooksCubitFailure({required this.errMess});
}

final class AllBooksCubitSuccess extends AllBooksState {
  final List<BookModel> books;
  AllBooksCubitSuccess({required this.books});
}
