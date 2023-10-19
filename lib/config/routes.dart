import 'package:eventsly_desktop/core/home/screens/home_screen.dart';
import 'package:eventsly_desktop/core/onboarding/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

//GoRouter configuration
class AppRouter {
  static final routes = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
