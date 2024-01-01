import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trucks/core/bloc_obsever.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MainDio.init();
  await configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
