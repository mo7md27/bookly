import 'package:bookly/featuers/home/presentation/views/home_view.dart';
import 'package:bookly/featuers/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
 static const kHomeView= '/homeView';
 static final router =GoRouter(
  routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashView(),
    ),
    GoRoute(
    path: kHomeView,
    builder: (context, state) => HomeView(),
    ),
 ], 
);
}