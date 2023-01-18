import 'package:flutter/material.dart';
import 'package:flutter_gallery/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should render properly', (tester) async {
    const widget = App();

    await tester.pumpWidget(widget);

    final material = tester.widget<MaterialApp>(find.byType(MaterialApp));

    expect(material.routes?.keys.contains('/'), true);
    expect(material.routes?.keys.contains('/scroll-home'), true);
    expect(material.routes?.keys.contains('/scroll-listB'), true);
    expect(material.routes?.keys.contains('//scroll-draggable'), true);
  });
}
