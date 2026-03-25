import 'package:custom_localization/core/localization/localization_engine.dart';
import 'package:custom_localization/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    debugPrint("Firebase initialized successfully.");
  } catch (e) {
    debugPrint("Firebase initialization failed: $e");
  }

  // Initialize Localization Engine
  final engine = LocalizationEngine();
  await engine.loadLanguage('en');

  runApp(
    ChangeNotifierProvider.value(
      value: engine,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Consumer allows the app to rebuild surgically when the language changes
    return Consumer<LocalizationEngine>(
      builder: (context, engine, child) {
        return MaterialApp(
          title: 'Localization Research Project',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // Show a loading indicator if the language is still loading
          home: engine.isLoading 
            ? const Scaffold(body: Center(child: CircularProgressIndicator()))
            : const HomeScreen(),
        );
      },
    );
  }
}
