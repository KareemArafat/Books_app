import 'package:bookly_app/features/fav/presentation/views/widgets/fav_books_app_bar.dart';
import 'package:bookly_app/features/fav/presentation/views/widgets/fav_books_list.dart';
import 'package:flutter/material.dart';

class FavBooksScreenBody extends StatelessWidget {
  const FavBooksScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FavBooksAppBar(),
        SizedBox(height: 20),
        Expanded(child: FavBooksList()),
      ],
    );
  }
}
