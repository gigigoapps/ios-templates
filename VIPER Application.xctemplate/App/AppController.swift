//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class AppController {
    
    static let shared = AppController()
    
    var appWireframe: AppWireframe?
    
    // MARK: - Initializers
    init() {
        self.appWireframe = nil
    }
}
