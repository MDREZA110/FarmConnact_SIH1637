import 'package:farmconnect/screens/starting_screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 95, 135, 188));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.primary,
            foregroundColor: kColorScheme.onPrimary,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            //margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
        ),
         home: const LoginScreen());
  }
}

// import 'package:farmconnect/screens/welcome_screen.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   if (kIsWeb) {
//     Firebase.initializeApp(
//         options: const FirebaseOptions(
//             apiKey: "AIzaSyCUEbvJ9V7lRoDZU2k8Z7n1_tIpHYToRkc",
//             authDomain: "farmerconnect-45f1a.firebaseapp.com",
//             projectId: "farmerconnect-45f1a",
//             storageBucket: "farmerconnect-45f1a.appspot.com",
//             messagingSenderId: "806247951038",
//             appId: "1:806247951038:web:fbce465a4b9fd6f7dd8cef"));
//     runApp(const MyApp());
//   }
// }

  