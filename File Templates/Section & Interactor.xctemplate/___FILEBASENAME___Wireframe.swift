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
    
    /// Method to show the ___VARIABLE_sceneName___ section
    ///
    /// - Returns: ___VARIABLE_sceneName___ View Controller with all dependencies
    func show___VARIABLE_sceneName___() -> ___VARIABLE_sceneName___VC? {
        guard let viewController = try? Instantiator<___VARIABLE_sceneName___VC>().viewController() else { return nil }
        let wireframe = ___VARIABLE_sceneName___Wireframe()
        let presenter = ___VARIABLE_sceneName___Presenter(
            view: viewController,
            wireframe: wireframe,
            interactor: ___VARIABLE_interactorName:identifier___Interactor()
        )
        viewController.presenter = presenter
        return viewController
    }
}
