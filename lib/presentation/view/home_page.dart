import 'package:flutter/material.dart';

import 'aba_lateral.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffD6D6D6),
        title: const Text('Menu'),
      ),
      drawer: const AbaLateral(),
    );
  }
}
