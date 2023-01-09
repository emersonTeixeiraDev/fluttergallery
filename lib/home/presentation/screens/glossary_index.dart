import 'package:flutter/material.dart';
import 'package:flutter_gallery/home/presentation/widgets/glossary_item_buttom.dart';

class GlossaryIndex extends StatelessWidget {
  const GlossaryIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        GlossaryItemButtom(
          title: 'Widgets de Scrolling',
          route: '/scroll-home',
        ),
      ],
    );
  }
}
