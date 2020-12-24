
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginTwo {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_two');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> get projectVersion async {
    final String version = await _channel.invokeMethod('getProjectVersion');
    return version;
  }
}
