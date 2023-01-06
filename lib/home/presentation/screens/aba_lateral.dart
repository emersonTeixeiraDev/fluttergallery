import 'package:flutter/material.dart';

import '../widgets/components_button.dart';

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
            padding: EdgeInsets.only(top: 8),
            child: Text('Widgets'),
          ),
          const ComponentsFlutter()
        ],
      ),
    );
  }
}
