import 'package:coletor_inventario/features/bipar/bipar.dart';
import 'package:flutter/material.dart';

import '../../features/home/home_page.dart';
import '../../features/login/login_page.dart';
import '../../features/register/register_page.dart';
import '../../features/splash/splash_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case 'register':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case 'login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case 'bipar':
        return MaterialPageRoute(builder: (_) => const BiparScreen());

      default:
        _erroRoute();
    }
    return null;
  }

  static Route<dynamic> _erroRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: Text('ERROR'),
        ),
        body: Text('Página não encontrada'),
      );
    });
  }
}
