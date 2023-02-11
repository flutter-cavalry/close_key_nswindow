import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'close_key_nswindow_method_channel.dart';

abstract class CloseKeyNswindowPlatform extends PlatformInterface {
  /// Constructs a CloseKeyNswindowPlatform.
  CloseKeyNswindowPlatform() : super(token: _token);

  static final Object _token = Object();

  static CloseKeyNswindowPlatform _instance = MethodChannelCloseKeyNswindow();

  /// The default instance of [CloseKeyNswindowPlatform] to use.
  ///
  /// Defaults to [MethodChannelCloseKeyNswindow].
  static CloseKeyNswindowPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CloseKeyNswindowPlatform] when
  /// they register themselves.
  static set instance(CloseKeyNswindowPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> closeKeyWindow() {
    throw UnimplementedError('closeKeyWindow() has not been implemented.');
  }
}
