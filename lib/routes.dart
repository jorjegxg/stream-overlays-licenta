import 'package:go_router/go_router.dart';
import 'package:stream_overlays/main_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => MainScreen(pageIndex: 0)),
    GoRoute(
      path: '/store',
      builder: (context, state) => MainScreen(pageIndex: 1),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => MainScreen(pageIndex: 2),
    ),
  ],
);
