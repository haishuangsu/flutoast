import 'package:flutter/services.dart';

class Flutoast {
  static const MethodChannel _channel = const MethodChannel('ftoast');

  static void show(String msg) async {
    await _channel.invokeMethod('showToast', {"msg": msg});
  }
}
