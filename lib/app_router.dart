import 'package:go_router/go_router.dart';
import 'package:warner_beach/screens/home_screen.dart';
import 'package:warner_beach/screens/load_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: LoadScreen.name,
      builder: (context, state) => const LoadScreen(),
    ),

    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    

  ],
);
