//  Copyright © 2015 Alex Deem. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var _window: UIWindow?;

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        _window = UIWindow(frame: UIScreen.mainScreen().bounds);
        if let window = _window {
            window.backgroundColor = UIColor.whiteColor();
            window.rootViewController = ViewController();
            window.makeKeyAndVisible();
        }
        return true
    }

}
