//
//  AppDelegate.swift
//  iTunesCaseStudy
//
//  Created by Bengi Anıl on 10.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow()
        let mainView = SplashViewBuilder.build {
            self.initializeMainView()
        }
        
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
        return true
    }
    
    private func initializeMainView() {
        DispatchQueue.main.async {
            UIView.transition(with: self.window!, duration: 1, options: .transitionCrossDissolve) {
                self.fireMainView()
            }
        }
    }
    
    private func fireMainView() {
        let mainView = MainTabBarBuilder.build()
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
    }

}

