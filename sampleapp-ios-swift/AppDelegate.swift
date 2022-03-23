
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        AppCenter.logLevel = .verbose
        
        AppCenter.start(withAppSecret: "522a8b45-3692-41d6-9749-a6079e2a874b", services: [
            Analytics.self,
            Crashes.self,
        ])
        
        return true
    }
}
