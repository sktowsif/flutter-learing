import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/app_routes.dart';
import 'package:flutter_catalog/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.defaultTheme(context),
      routes: {
        '/': (context) => const LoginPage(),
        AppRoute.homeRoute: (context) => const HomePage(),
        AppRoute.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
