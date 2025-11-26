import 'package:flutter/material.dart';
import 'package:task/app_clinte.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(MyApp(appRouter: AppRouter()));
}
