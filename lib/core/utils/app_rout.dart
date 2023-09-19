import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/features/home/presention/manager/similar_book/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presention/views/details_book_view.dart';
import 'package:bookly_app/features/home/presention/views/home_view.dart';
import 'package:bookly_app/features/presentation/views/splash_view.dart';
import 'package:bookly_app/features/search/presentaion/views/search_views.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplshView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
            child: const SearchView()),
      ),
    ],
  );
}
