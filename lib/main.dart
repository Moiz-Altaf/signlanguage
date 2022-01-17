import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signtranslator/app/sign_translator.dart';
import 'package:signtranslator/providers/authprovider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Provider.debugCheckInvalidValueType = null;

  runApp(
    MultiProvider(
      providers: [
        Provider<AuthNotifier>(
          create: (BuildContext context) {
            return AuthNotifier();
          },
        ),
      ],
      child: const Signtranslator(),
    ),
  );
}
