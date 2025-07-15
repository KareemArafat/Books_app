import 'package:bookly_app/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:bookly_app/features/search/presentation/manger/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: NewestBookItem(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is SearchInitial) {
          return Center(child: Text('No Results'));
        } else if (state is SearchFailure) {
          return Center(child: Text(state.errMess));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
