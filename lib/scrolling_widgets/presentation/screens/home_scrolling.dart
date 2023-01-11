import 'package:flutter/material.dart';
import 'package:flutter_gallery/routes/app_routes.dart';

class HomeScrolling extends StatelessWidget {
  const HomeScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffD6D6D6),
        title: const Text(
          'Widgets de Scrolling',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'Widgets roláveis',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.scrollinListB),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffD6D6D6),
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size(200, 50),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: const Text(
                'ListView.Biulder',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.scrollinDraggable),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffD6D6D6),
                ),
                fixedSize: MaterialStateProperty.all(
                  const Size(200, 50),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: const Text(
                'Draggable Scrollable Sheet',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
