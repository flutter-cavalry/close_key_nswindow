import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'close_key_nswindow_platform_interface.dart';

/// An implementation of [CloseKeyNswindowPlatform] that uses method channels.
class MethodChannelCloseKeyNswindow extends CloseKeyNswindowPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('close_key_nswindow');

  @override
  Future<void> closeKeyWindow() async {
    await methodChannel.invokeMethod<String>('closeKeyWindow');
  }
}
