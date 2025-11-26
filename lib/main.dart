import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/app_clinte.dart';
import 'package:task/bloc_observer.dart';
import 'package:task/core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
