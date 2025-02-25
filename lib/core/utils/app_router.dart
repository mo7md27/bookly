import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/featuers/home/data/models/book_models/book_model.dart';
import 'package:bookly/featuers/home/data/repos/home_repo_impl.dart';
import 'package:bookly/featuers/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/featuers/home/presentation/views/book_details_view.dart';
import 'package:bookly/featuers/home/presentation/views/home_view.dart';
import 'package:bookly/featuers/search/presentation/views/search_view.dart';
import 'package:bookly/featuers/splash/presentation/views/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          )),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
