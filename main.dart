import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:techadisa/screens/homepage.dart';
import 'package:techadisa/screens/showcase.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
    ),
    GoRoute(
      path: '/showcase',
      builder: (BuildContext context, GoRouterState state) {
        return Showcase();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
