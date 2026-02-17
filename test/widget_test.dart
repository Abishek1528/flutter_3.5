// This is a basic Flutter widget test for FlexiFit app.

import 'package:flutter_test/flutter_test.dart';

import 'package:flexifit_ui/main.dart';

void main() {
  testWidgets('FlexiFit app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FlexiFitApp());

    // Verify that the login screen is displayed.
    expect(find.text('FlexiFit'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
