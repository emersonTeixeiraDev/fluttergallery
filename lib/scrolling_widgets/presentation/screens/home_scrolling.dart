import 'package:flutter/material.dart';
import 'package:flutter_gallery/routes/app_routes.dart';

class HomeScrolling extends StatelessWidget {
  const HomeScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widgets de Scrolling',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'ALgum nome',
            ),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AppRoutes.scrollingwidgets),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size(200, 50)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            child: const Text('ListView.Biulder'),
          ),
        ],
      ),
    );
  }
}
