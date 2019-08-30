import UIKit
import Flutter
import GoogleMaps
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    
    // Use Firebase library to configure APIs.
        FirebaseApp.configure()
    GMSServices.provideAPIKey("AIzaSyCGvJDHeeGDhrUf0V42WWe_7-2blbWXn5w")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
