import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvvm/Config/Environments/app_env.dart';
import 'package:mvvm/Config/Firebase/firebase_options_prod.dart';
import 'package:mvvm/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mainCommon(AppEnvironment.STAGING);
  // await Firebase.initializeApp(
  //   name: 'flutter-prod-53299',
  //   options: DefaultFirebaseOptions().currentPlatform,
  // );
}
