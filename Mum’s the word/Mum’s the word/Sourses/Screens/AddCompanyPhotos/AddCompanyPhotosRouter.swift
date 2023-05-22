// 
//  AddCompanyPhotosRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import UIKit

final class AddCompanyPhotosRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = AddCompanyPhotosBuilder.build(router: self)
        navigationRouter.showScreen(vc)
    }
}
