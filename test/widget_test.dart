import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


import 'package:calculadora_imc/main.dart';


void main() {
  testWidgets('IMC Calculator test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());


    // Enter height and weight values
    await tester.enterText(find.byKey(Key('height')), '170');
    await tester.enterText(find.byKey(Key('weight')), '60');


    // Tap the 'Calculate IMC' button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();


    // Verify that the IMC result is displayed
    expect(find.text('Your IMC is'), findsOneWidget);
  });
}
