import 'package:go_router/go_router.dart';
import 'package:movie_app_cero/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: MovieHomeScreen.name,
    builder: (context, state) => const MovieHomeScreen(),
  ),
]);
