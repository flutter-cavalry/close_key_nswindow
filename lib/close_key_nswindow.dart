import 'close_key_nswindow_platform_interface.dart';

class CloseKeyNswindow {
  /// Calls `NSApplication.shared.keyWindow?.close()`.
  Future<void> closeKeyWindow() {
    return CloseKeyNswindowPlatform.instance.closeKeyWindow();
  }
}
