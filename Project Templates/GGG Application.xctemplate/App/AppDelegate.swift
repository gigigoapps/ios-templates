//
//  AppDelegate.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appController = AppController.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        
        prepareAppController()
        appController.appDidLaunch()
        
        return true
    }
    
    // MARK: - Private Helpers
    
    fileprivate func prepareAppController() {
        appController.appWireframe = AppWireframe()
        appController.appWireframe?.window = self.window
    }
}

