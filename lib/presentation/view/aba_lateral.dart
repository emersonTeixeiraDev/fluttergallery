import 'package:flutter/material.dart';

import 'components_button.dart';

class AbaLateral extends StatelessWidget {
  const AbaLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: const Color(0xffD6D6D6),
            height: 350,
            width: double.infinity,
            child: const FlutterLogo(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Widgets'),
          ),
          const ComponentsButtons()
        ],
      ),
    );
  }
}
