import 'package:flutter/material.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  MainDio.init();

  runApp(const MyApp());
}
