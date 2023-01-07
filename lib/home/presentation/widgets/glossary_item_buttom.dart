import 'package:flutter/material.dart';

class GlossaryItemButtom extends StatelessWidget {
  const GlossaryItemButtom({
    required this.title,
    required this.route,
    super.key,
  });

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: false,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed(route),
              child: Text(
                title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
