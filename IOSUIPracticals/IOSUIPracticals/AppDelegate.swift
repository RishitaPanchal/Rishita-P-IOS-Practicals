import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("AppDelegate : didFinishLaunchingWithOptions")
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        print("AppDelegate : connectingSceneSession")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print("AppDelegate : didDiscardSceneSessions")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("AppDelegate : applicationDidReceiveMemoryWarning")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("AppDelegate : applicationWillTerminate")
    }
    
    func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
        print("AppDelegate : applicationProtectedDataDidBecomeAvailable")
    }
    
    func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
        print("AppDelegate : applicationProtectedDataWillBecomeUnavailable")
    }
    
    func applicationSignificantTimeChange(_ application: UIApplication) {
        print("AppDelegate : applicationSignificantTimeChange")
    }
    
    func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
        print("AppDelegate : application(:didUpdate)")
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        print("AppDelegate : application(:open url)")
        return true
    }
    
}

