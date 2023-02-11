[![pub package](https://img.shields.io/pub/v/close_key_nswindow.svg)](https://pub.dev/packages/close_key_nswindow)

# close_key_nswindow

Call `close` or `performClose` on key `NSWindow`.

## Usage

```dart
final plugin = CloseKeyNswindow();

// `NSApplication.shared.keyWindow?.close()`.
await plugin.close();
// `NSApplication.shared.keyWindow?.performClose()`.
await plugin.performClose();
```
