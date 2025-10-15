import 'package:bookly_app/core/utilities/styles.dart';

import 'package:bookly_app/features/details/presentation/views/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text('More similar Books', style: Styles.textStyle16),
        ),
        SizedBox(height: 15),
        SimilarBooksList(category: category),
        SizedBox(height: 15),
      ],
    );
  }
}
