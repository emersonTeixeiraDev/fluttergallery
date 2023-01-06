import 'package:flutter/material.dart';
import 'package:flutter_gallery/home/presentation/screens/home_page.dart';
import 'package:flutter_gallery/routes/app_routes.dart';
import 'package:flutter_gallery/theme/theme.dart';

import 'widgets_gallery/presentation/screens/scrolling_widgets.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      routes: {
        AppRoutes.home: (ctx) => const HomePage(),
        AppRoutes.scrollwidgets: (ctx) => const ScrollingWidgets(),
      },
      //home: const HomePage(),
    );
  }
}
