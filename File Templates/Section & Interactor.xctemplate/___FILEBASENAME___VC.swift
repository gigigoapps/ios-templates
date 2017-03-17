//
//  ___FILEBASENAMEASIDENTIFIER___VC.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import GIGLibrary

class ___FILEBASENAMEASIDENTIFIER___VC: UIViewController, ___FILEBASENAMEASIDENTIFIER___UI {
    
    // MARK: - Attributtes
    
    var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter?
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
}

extension ___FILEBASENAMEASIDENTIFIER___VC: Instantiable {
    
    // MARK: - Instantiable
    
    public static func storyboard() -> String {
        return ""
    }
    
    public static func identifier() -> String? {
        return "___FILEBASENAMEASIDENTIFIER___VC"
    }
}
