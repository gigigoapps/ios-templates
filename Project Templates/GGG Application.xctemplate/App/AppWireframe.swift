//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class AppWireframe {
    
    // MARK: - Public Properties
    
    var appController: AppController?
    
    // MARK: - Private Properties
    
    var window: UIWindow?
    
    
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
