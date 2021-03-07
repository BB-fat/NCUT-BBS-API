
import 'dart:async';

import 'package:flutter/services.dart';

class NcutBbsApi {
  static const MethodChannel _channel =
      const MethodChannel('ncut_bbs_api');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
