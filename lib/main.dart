import 'package:flutter/material.dart';
import 'package:mvvm/Config/Environments/app_env.dart';
import 'package:mvvm/Config/Environments/flavor_banner.dart';
import 'package:mvvm/Views/Splash/splash_screen.dart';

void main() => mainCommon(AppEnvironment.PROD);

Future<void> mainCommon(AppEnvironment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvInfo.initialize(environment);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MvvM Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: flavorBanner(const SplashScreen()),
    );
  }
}
