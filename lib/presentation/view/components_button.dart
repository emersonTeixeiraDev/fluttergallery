import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComponentsButtons extends StatelessWidget {
  const ComponentsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('nois'),
            ),
          ],
        ),
      ),
    );
  }
}
