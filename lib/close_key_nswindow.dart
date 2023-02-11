import 'close_key_nswindow_platform_interface.dart';

class CloseKeyNswindow {
  /// Calls `NSApplication.shared.keyWindow?.close()`.
  Future<void> close() {
    return CloseKeyNswindowPlatform.instance.close();
  }

  /// Calls `NSApplication.shared.keyWindow?.performClose()`.
  Future<void> performClose() {
    return CloseKeyNswindowPlatform.instance.performClose();
  }
}
