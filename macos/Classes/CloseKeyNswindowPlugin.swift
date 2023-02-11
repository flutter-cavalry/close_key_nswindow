import Cocoa
import FlutterMacOS

public class CloseKeyNswindowPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "close_key_nswindow", binaryMessenger: registrar.messenger)
    let instance = CloseKeyNswindowPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "closeKeyWindow":
      NSApplication.shared.keyWindow?.close()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
