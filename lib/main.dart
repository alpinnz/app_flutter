import 'package:flutter/material.dart';

import 'feature/feature.dart';
import 'core/routes/routes.dart';

void main() async {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Feature();
  }
}
