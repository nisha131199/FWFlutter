import 'dart:io' show InternetAddress, SocketException;
import 'package:flutter/cupertino.dart';

checkInternetConnection() async {
  try {
    final result = await InternetAddress.lookup('google.com');

    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      debugPrint('internet status connected');
      return true;
    }
  } on SocketException catch (_) {
    debugPrint('not connected');
    return false;
  }
}