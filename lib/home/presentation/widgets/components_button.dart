import 'package:flutter/material.dart';
import 'package:flutter_gallery/routes/app_routes.dart';

class ComponentsFlutter extends StatelessWidget {
  const ComponentsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: false,
          children: [
            const Text(
              'Widgets de Scrolling',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            TextButton(
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.scrollwidgets),
              child: const Text(
                'ListView.Biulder',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
