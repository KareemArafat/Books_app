import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/fav/presentation/views/widgets/fav_books_screen_body.dart';
import 'package:flutter/material.dart';

class FavBooksScreen extends StatelessWidget {
  const FavBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Favorites Books',
          style: Styles.textStyle30.copyWith(fontSize: 25),
        ),
      ),
      body: FavBooksScreenBody(),
    );
  }
}
