import 'package:flutter/material.dart';
import 'package:flutter_gallery/home/presentation/screens/glossary_index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffD6D6D6),
        title: const Text(
          'Glossário de widgets',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const GlossaryIndex(),
    );
  }
}
