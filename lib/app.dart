import 'package:flutter/material.dart';
import 'package:flutter_gallery/presentation/theme/theme.dart';
import 'package:flutter_gallery/presentation/view/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: const HomePage(),
    );
  }
}
