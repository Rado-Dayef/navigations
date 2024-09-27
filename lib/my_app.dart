import 'package:flutter/material.dart';
import 'package:test_navigations/views/screens/details_screen.dart';
import 'package:test_navigations/views/screens/home_screen.dart';
import 'package:test_navigations/views/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      routes: {
        "/home": (context) => const HomeScreen(),
        "/splash": (context) => const SplashScreen(),
        "/details": (context) => const DetailsScreen(),
      },
      initialRoute: "/splash",
    );
  }
}

/// Navigations:-
///   1. MaterialPage. => HomeScree(), => DetailsScreen()
///     1. push.
///     2. pop.
///     3. pushReplacement.
///
///   2. Routes. => "/home", => "/details"
///     1. pushNamed.
///     2. pushReplacementNamed.
///
/// - constants:-
///   - Strings:-
///   - Colors:-
///   - extensions:-
///
/// - Models:-
///   - Models:-
///   - Services:-
/// - Controllers:-
/// - Views:-
///   - Screens:-
///   - Widgets:-
