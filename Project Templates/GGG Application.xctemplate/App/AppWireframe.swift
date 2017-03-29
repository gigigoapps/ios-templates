//
//  AppWireframe.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class AppWireframe {
    
    var window: UIWindow?
    
    private var navigationController = UINavigationController()

    func showAppLaunchWireframe() {
//        let loginWireframe = LoginWireframe(
//            navigationController: self.navigationController)
//        guard let loginVC = loginWireframe.showLogin() else {
//            LogWarn("loginVC not found")
//            return
//        }
//        self.navigationController.setViewControllers([loginVC], animated: false)
        window?.rootViewController = self.navigationController
    }
    
    // MARK: UIViewController
    
    func dissmiss(completion: (() -> Void)? = nil) {
        self.topViewController()?.dismiss(animated: true, completion: completion)
    }
    
    // MARK: - Private Helpers
    
    private func topViewController() -> UIViewController? {
        var rootVC = UIApplication.shared.keyWindow?.rootViewController
        
        while let presentedController = rootVC?.presentedViewController {
            rootVC = presentedController
        }
        
        return rootVC
    }
}
