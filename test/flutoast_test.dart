import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutoast/flutoast.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutoast');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('show', () async {
    expect(Flutoast.show, '42');
  });
}
