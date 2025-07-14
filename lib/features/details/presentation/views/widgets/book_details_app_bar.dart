import 'package:bookly_app/features/details/presentation/manager/fav_books_cubit.dart/fav_books_cubit.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            BlocProvider.of<FavBooksCubit>(context).addFavBook(book: bookModel);
          },
          icon: BlocBuilder<FavBooksCubit, FavBooksState>(
            builder: (context, state) {
              return Icon(
                bookModel.fav ? Icons.star_rounded : Icons.star_border_rounded,
                size: 30,
              );
            },
          ),
        ),
      ],
    );
  }
}
