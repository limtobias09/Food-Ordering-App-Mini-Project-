import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app2/view/description_save_order/description_screen.dart';

void main() {
  testWidgets('Test increment and decrement count', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: DescriptionScreen(),
    ));

    //Cari tombol increment dan decrement
    final incrementButton = find.byIcon(Icons.add);
    final decrementButton = find.byIcon(Icons.remove);

    //Cari text untuk menampilkan angka hasil dari increment dan decrement
    final countText = find.byType(Text);

    //Memverifikasi bahwa nilai awal-awal adalah 0
    expect(countText, findsOneWidget);
    expect((tester.widget(countText) as Text).data, '0');

    //Test saat pencet tombol increment akan berhasil bertambah menjadi angka 1
    await tester.tap(incrementButton);
    await tester.pump();
    expect((tester.widget(countText) as Text).data, '1');

    //Test saat pencet tombol decrement akan berhasil berkurang nilainya
    await tester.tap(decrementButton);
    await tester.pump();
    expect((tester.widget(countText) as Text).data, '0');

    //Memverifikasi bahwa angkanya tidak kurang dari 0
    await tester.tap(decrementButton);
    await tester.pump();
    expect((tester.widget(countText) as Text).data, '0');
  });
}
