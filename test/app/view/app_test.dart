import 'package:barizi_nashon_test/app/app.dart';
import 'package:barizi_nashon_test/splashscreen/splash.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
