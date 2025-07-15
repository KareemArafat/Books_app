import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FavRepo {
  void addFavBook({required BookModel book});

  void delFavBook({required BookModel book});

  Future<List<BookModel>> showFavBooks();
}
