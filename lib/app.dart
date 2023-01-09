import 'package:flutter/material.dart';
import 'package:flutter_gallery/home/presentation/screens/home_screen.dart';
import 'package:flutter_gallery/routes/app_routes.dart';
import 'package:flutter_gallery/scrolling_widgets/presentation/screens/home_scrolling.dart';
import 'package:flutter_gallery/theme/theme.dart';

import 'scrolling_widgets/presentation/widgets/listview_biulder.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      routes: {
        AppRoutes.home: (ctx) => const HomePage(),
        AppRoutes.scrollingwidgets: (ctx) => const ListViewBiulderScreen(),
        AppRoutes.scrollinghome: (ctx) => const HomeScrolling(),
      },
      //home: const HomePage(),
    );
  }
}
