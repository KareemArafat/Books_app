import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/fav/presentation/manager/fav_book_cubit/fav_book_cubit.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: Icon(Icons.close, size: 30),
        ),
        IconButton(
          onPressed: () {
            isFav(bookModel)
                ? BlocProvider.of<FavBookCubit>(
                  context,
                ).delFavBook(book: bookModel)
                : BlocProvider.of<FavBookCubit>(
                  context,
                ).addFavBook(book: bookModel);
          },
          icon: BlocBuilder<FavBookCubit, FavBookState>(
            builder: (context, state) {
              if (state is AddFavBookSuccess) {
                return Icon(Icons.favorite, color: Colors.red, size: 30);
              } else if (state is DelFavBookSuccess) {
                return Icon(Icons.favorite_border, size: 30);
              } else {
                return isFav(bookModel)
                    ? Icon(Icons.favorite, color: Colors.red, size: 30)
                    : Icon(Icons.favorite_border, size: 30);
              }
            },
          ),
        ),
      ],
    );
  }
}

bool isFav(BookModel bookModel) {
  final box = Hive.box<BookModel>(kFavBooks);
  if (box.containsKey(bookModel.id)) {
    return true;
  } else {
    return false;
  }
}
