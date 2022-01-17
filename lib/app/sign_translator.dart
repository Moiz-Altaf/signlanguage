import 'package:flutter/material.dart';
import 'package:signtranslator/utils/routes.dart';

class Signtranslator extends StatelessWidget {
  const Signtranslator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.authLanding,
      routes: Routes.appRoutes(context),
    );
  }
}
