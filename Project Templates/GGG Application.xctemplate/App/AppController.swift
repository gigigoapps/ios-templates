//
//  AppController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class AppController {
    
    static let shared = AppController()
    var appWireframe: AppWireframe?
    
    func appDidLaunch() {
        self.appWireframe?.showAppLaunchWireframe()
    }
    
}
