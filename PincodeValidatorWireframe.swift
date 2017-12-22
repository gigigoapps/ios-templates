//
//  ___VARIABLE_sceneName___Router.swift
//  WOAH
//
//  Created by José Estela on 12/12/17.
//  Copyright © 2017 Gigigo Mobile Services S.L.. All rights reserved.
//

import Foundation
import GIGLibrary

protocol ___VARIABLE_sceneName___WireframeInput {
    func show___VARIABLE_sceneName___(in viewController: UIViewController?)
    func show___VARIABLE_sceneName___(in viewController: UINavigationController)
    func dismiss()
}

class ___VARIABLE_sceneName___Wireframe: ___VARIABLE_sceneName___WireframeInput {
    
    // MARK: - Private attributes
    
    private var viewController: UIViewController?
    private var navigationController: UINavigationController?
    
    // MARK: - Public methods
    
    func show___VARIABLE_sceneName___(in viewController: UIViewController? = nil) {
        guard let pincodeValidatorVC = self.show___VARIABLE_sceneName___() else { return LogWarn("Error loading ___VARIABLE_sceneName___VC") }
        if let viewController = viewController {
            self.viewController = viewController
            viewController.present(pincodeValidatorVC, animated: true)
        } else {
            let viewController = AppController.shared.appWireframe?.topViewController()
            viewController?.present(pincodeValidatorVC, animated: true)
            self.viewController = viewController
        }
    }
    
    func show___VARIABLE_sceneName___(in viewController: UINavigationController) {
        guard let pincodeValidatorVC = self.show___VARIABLE_sceneName___() else { return LogWarn("Error loading ___VARIABLE_sceneName___VC") }
        self.navigationController = viewController
        self.navigationController?.show(
            pincodeValidatorVC,
            sender: self
        )
    }
    
    func dismiss() {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.viewController?.dismiss(animated: true)
        }
    }
    
    private func show___VARIABLE_sceneName___() -> ___VARIABLE_sceneName___VC? {
        guard let viewController = try? ___VARIABLE_sceneName___VC.instantiateFromStoryboard() else { return nil }
        let presenter = ___VARIABLE_sceneName___Presenter(
            view: viewController,
            wireframe: self
        )
        viewController.presenter = presenter
        return viewController
    }
}
