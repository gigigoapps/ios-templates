//
//  ___VARIABLE_sceneName___Router.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import GIGLibrary

struct ___VARIABLE_sceneName___Wireframe {
    
    // MARK: - Private attributes
    
    private var viewController: UIViewController?
    
    // MARK: - Public methods
    
    func show___VARIABLE_sceneName___(in viewController: UIViewController? = nil) {
        guard let pincodeValidatorVC = self.show___VARIABLE_sceneName___() else { return LogWarn("Error loading ___VARIABLE_sceneName___VC") }
        if let navigationController = viewController as? UINavigationController {
            self.viewController = navigationController
            navigationController.show(
                pincodeValidatorVC,
                sender: self
            )
        } else if let viewController = viewController {
            self.viewController = viewController
            viewController.present(pincodeValidatorVC, animated: true)
        } else {
            let viewController = AppController.shared.appWireframe?.topViewController()
            viewController?.present(pincodeValidatorVC, animated: true)
            self.viewController = viewController
        }
    }
    
    func dismiss() {
        if let navigationController = self.viewController as? UINavigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.viewController?.dismiss(animated: true)
        }
    }
    
    private func show___VARIABLE_sceneName___() -> ___VARIABLE_sceneName___VC? {
        guard let viewController = try? ___VARIABLE_sceneName___VC.instantiateFromStoryboard() else { return nil }
        let wireframe = ___VARIABLE_sceneName___Wireframe()
        let presenter = ___VARIABLE_sceneName___Presenter(
            view: viewController,
            wireframe: wireframe
        )
        viewController.presenter = presenter
        return viewController
    }
}
