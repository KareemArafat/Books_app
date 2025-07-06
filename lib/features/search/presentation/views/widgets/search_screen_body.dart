import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => GoRouter.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Expanded(child: SearchField()),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text('Search Results', style: Styles.textStyle18),
          ),
          SizedBox(height: 10),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
