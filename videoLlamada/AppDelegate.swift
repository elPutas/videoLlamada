//
//  AppDelegate.swift
//  videoLlamadaTest
//
//  Created by Gio Valdes on 24/02/21.
//

import UIKit
import MobileRTC
import MobileCoreServices


@main
class AppDelegate: UIResponder, UIApplicationDelegate, MobileRTCAuthDelegate
{
    var window: UIWindow?
    var restrictRotation:UIInterfaceOrientationMask = .portrait

    func onMobileRTCAuthReturn(_ returnValue: MobileRTCAuthError) {
        print("get \(returnValue)")
        if (returnValue != MobileRTCAuthError.success)
        {
            let msg = "SDK authentication failed, error code: \(returnValue)"
            print(msg)
        }
    }
    
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        
        let newViewController = ViewController()
        let navigationController = UINavigationController(rootViewController: newViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        //FirebaseApp.configure()
        
        let mainSDK = MobileRTCSDKInitContext()
        mainSDK.domain = "zoom.us"
        MobileRTC.shared().initialize(mainSDK)
        
        
        let authService = MobileRTC.shared().getAuthService()
        print(MobileRTC.shared().mobileRTCVersion.self)
        authService?.delegate        = self
        authService?.clientKey       = "I5iVKUjQEnpDaJDVgXTHLxAfHfzKhrVAUvqQ"
        authService?.clientSecret    = "lkTq5EHXSYE29t7wgxVLtfIvElThUAmq1z7h"
        authService?.sdkAuth()
        authService?.jwtToken        = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBLZXkiOiJJNWlWS1VqUUVucERhSkRWZ1hUSEx4QWZIZnpLaHJWQVV2cVEiLCJpYXQiOjAsImV4cCI6MCwidG9rZW5FeHAiOjB9.ZYrvzJe5ezevsgqa48ExiyGAKwbTNMUflfWdB2ePFKU"
        // Override point for customization after application launch.
        
        return true
    }


}

