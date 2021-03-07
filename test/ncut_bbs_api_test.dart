import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ncut_bbs_api/ncut_bbs_api.dart';

void main() {
  const MethodChannel channel = MethodChannel('ncut_bbs_api');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NcutBbsApi.platformVersion, '42');
  });
}
