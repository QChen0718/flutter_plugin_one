import Flutter
import UIKit

public class SwiftFlutterPluginTwoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_two", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginTwoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getPlatformVersion"{
        result("iOS " + UIDevice.current.systemVersion)
    }else if call.method == "getProjectVersion"{
        let version:String =  Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
        result("project " + version)
    }
  }
}
