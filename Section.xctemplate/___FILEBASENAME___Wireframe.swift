//
//  ___FILEBASENAMEASIDENTIFIER___Router.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import GIGLibrary

struct ___FILEBASENAMEASIDENTIFIER___Wireframe {
    
    /// Method to show the ___FILEBASENAMEASIDENTIFIER___ section
    ///
    /// - Returns: ___FILEBASENAMEASIDENTIFIER___ View Controller with all dependencies
    func show___FILEBASENAMEASIDENTIFIER___() -> ___FILEBASENAMEASIDENTIFIER___VC? {
        guard let viewController = try? Instantiator<___FILEBASENAMEASIDENTIFIER___VC>().viewController() else { return nil }
        let wireframe = ___FILEBASENAMEASIDENTIFIER___Wireframe()
        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter(
            view: viewController,
            wireframe: wireframe
        )
        viewController.presenter = presenter
        return viewController
    }
}
