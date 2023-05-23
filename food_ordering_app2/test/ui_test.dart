import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_ordering_app2/view/home/home_screen.dart';

 

void main() {
  testWidgets('Test UI di Home Screen', (WidgetTester tester) async{
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(),
    ));

    //Test app bar title text
    expect(find.text('What Would You Like To Eat Today?'), findsOneWidget);

    //Test app bar background color
    final findAppbar=find.byType(AppBar);
    final appBarWidget= tester.widget<AppBar>(findAppbar);
    expect(appBarWidget.backgroundColor, equals(const Color.fromARGB(255, 154, 41, 33)));
     
  });
}

