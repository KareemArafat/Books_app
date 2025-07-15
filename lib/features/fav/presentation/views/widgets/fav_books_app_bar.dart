import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavBooksAppBar extends StatelessWidget {
  const FavBooksAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        Text(
          'Favorites Books',
          style: Styles.textStyle30.copyWith(fontSize: 25),
        ),
      ],
    );
  }
}
