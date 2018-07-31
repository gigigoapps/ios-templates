//
//  ___VARIABLE_sceneName___Wireframe.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import GIGLibrary

protocol ___VARIABLE_sceneName___WireframeInput {
    func show___VARIABLE_sceneName___(in viewController: UIViewController?)
    func show___VARIABLE_sceneName___(inNavigation viewController: UINavigationController)
    func dismiss()
}

class ___VARIABLE_sceneName___Wireframe: ___VARIABLE_sceneName___WireframeInput {
    
    // MARK: - Private attributes
    
    private var viewController: UIViewController?
    private var navigationController: UINavigationController?
    
    // MARK: - Public methods
    
    func show___VARIABLE_sceneName___(in viewController: UIViewController? = nil) {
        guard let vc___VARIABLE_sceneName___ = self.show___VARIABLE_sceneName___() else { return LogWarn("Error loading vc___VARIABLE_sceneName___") }
        if let viewController = viewController {
            self.viewController = viewController
            viewController.present(vc___VARIABLE_sceneName___, animated: true)
        } else {
            let viewController = self.topViewController()
            viewController?.present(vc___VARIABLE_sceneName___, animated: true)
            self.viewController = viewController
        }
    }
    
    func show___VARIABLE_sceneName___(inNavigation viewController: UINavigationController) {
        guard let vc___VARIABLE_sceneName___ = self.show___VARIABLE_sceneName___() else { return LogWarn("Error loading vc___VARIABLE_sceneName___") }
        self.navigationController = viewController
        self.navigationController?.show(
            vc___VARIABLE_sceneName___,
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
    
    private func show___VARIABLE_sceneName___() -> vc___VARIABLE_sceneName___? {
        guard let viewController = try? vc___VARIABLE_sceneName___.instantiateFromStoryboard() else { return nil }
        let presenter = ___VARIABLE_sceneName___Presenter(
            view: viewController,
            wireframe: self
        )
        viewController.presenter = presenter
        return viewController
    }
    
    private func topViewController() -> UIViewController? {
        var rootVC = UIApplication.shared.keyWindow?.rootViewController
        while let presentedController = rootVC?.presentedViewController {
            rootVC = presentedController
        }
        return rootVC
    }
    
}
