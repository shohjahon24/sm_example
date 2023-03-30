import 'package:flutter/material.dart';
import 'package:sm_example/app.dart';
import 'package:sm_example/services/service_locator.dart';

void main() {
  setupLocator();
  runApp(const App());
}
