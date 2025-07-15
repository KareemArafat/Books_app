import 'package:bookly_app/features/fav/presentation/views/widgets/fav_books_screen_body.dart';
import 'package:flutter/material.dart';

class FavBooksScreen extends StatelessWidget {
  const FavBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FavBooksScreenBody()));
  }
}
