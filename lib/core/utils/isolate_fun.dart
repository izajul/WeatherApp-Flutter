
import 'package:flutter/foundation.dart';

/// parsing data using isolate, to avoid blocking the main thread
/// the function doOnIsolate will be executed in a separate thread
Future<R> handleWithIsolate<R, D>(D data, R Function(D) doOnIsolate) async {
  final result = await compute(doOnIsolate, data);
  return result;
}