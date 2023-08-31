import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller = self.window.rootViewController as! FlutterViewController
      let methodChannel = FlutterMethodChannel.init(name: "com.example.flutterwidgets.widgets_test_project/check_platform", binaryMessenger: controller.binaryMessenger)
              
              methodChannel.setMethodCallHandler({
                  [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                  
                  if call.method == "getPlatformName" {
                      result("iOS")
                  } else {
                      result(FlutterMethodNotImplemented)
                  }
                  
              })
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
