import 'package:flutter/foundation.dart';

void debugPrintWithTime(String str) {
  debugPrint('${DateTime.now().toIso8601String()}: $str');
}