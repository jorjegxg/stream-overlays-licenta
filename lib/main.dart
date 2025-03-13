import 'package:flutter/material.dart';
import 'package:stream_overlays/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
    );
  }
}
