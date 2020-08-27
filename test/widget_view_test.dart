import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_view/widget_view.dart';

import 'counter.dart' as stateful_widget_view;
import 'stateless_counter.dart' as stateless_widget_view;

void main() {
  group(StatefulWidgetView, () {
    testWidgets('Counter with $StatefulWidgetView increments.',
        (WidgetTester tester) async {
      await tester.pumpWidget(stateful_widget_view.MyApp());

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });

  group(StatelessWidgetView, () {
    testWidgets('Counter with $StatelessWidgetView increments.',
        (WidgetTester tester) async {
      await tester.pumpWidget(stateless_widget_view.MyApp());

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}
