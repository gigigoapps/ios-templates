//
//  ___VARIABLE_sceneName___VC.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import GIGLibrary

class ___VARIABLE_sceneName___VC: UIViewController, ___VARIABLE_sceneName___UI {
    
    // MARK: - Attributtes
    
    var presenter: ___VARIABLE_sceneName___Presenter?
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
}

extension ___VARIABLE_sceneName___VC: Instantiable {
    
    // MARK: - Instantiable
    
    static var storyboard: String = ""
    static var identifier: String = "___VARIABLE_sceneName___VC"
    
}
