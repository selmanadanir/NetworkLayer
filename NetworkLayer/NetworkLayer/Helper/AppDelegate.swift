//
//  AppDelegate.swift
//  NetworkLayer
//
//  Created by Selman Adanır on 12.11.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        let apiService = PostManager()
        let viewModel = PostViewModel(apiService: apiService)
        let rootVC = UINavigationController(rootViewController: PostViewController(viewModel: viewModel))
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }
}
