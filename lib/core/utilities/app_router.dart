import 'package:bookly_app/core/utilities/get_it.dart';
import 'package:bookly_app/features/details/data/repos/details_repo_imp.dart';
import 'package:bookly_app/features/fav/presentation/manager/fav_book_cubit/fav_book_cubit.dart';
import 'package:bookly_app/features/fav/data/repos/fav_repo_imp.dart';
import 'package:bookly_app/features/fav/presentation/manager/show_fav_books_cubit/show_fav_books_cubit.dart';
import 'package:bookly_app/features/fav/presentation/views/fav_books_screen.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/details/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/details/presentation/views/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/search/presentation/manger/cubit/search_cubit.dart';
import 'package:bookly_app/features/search/data/repos/search_implement.dart';
import 'package:bookly_app/features/search/presentation/views/search_screen.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/homeScreen';
  static const kBookDetailsScreen = '/bookDetailsScreen';
  static const kSearchScreen = '/searchScreen';
  static const kFavScreen = '/favScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder:
            (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create:
                      (context) =>
                          SimilarBooksCubit(getIt.get<DetailsRepoImp>()),
                ),
                BlocProvider(create: (context) => FavBookCubit(FavRepoImp())),
              ],
              child: BookDetailsScreen(bookModel: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: kSearchScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SearchCubit(getIt.get<SearchImplement>()),
              child: const SearchScreen(),
            ),
      ),
      GoRoute(
        path: kFavScreen,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) => ShowFavBooksCubit(FavRepoImp())..showFavBooks(),
              child: const FavBooksScreen(),
            ),
      ),
    ],
  );
}
