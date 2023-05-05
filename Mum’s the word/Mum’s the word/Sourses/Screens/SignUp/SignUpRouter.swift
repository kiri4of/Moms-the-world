// 
//  SignUpRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 03.05.2023.
//

import UIKit

final class SignUpRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = SignUpBuilder.build(router: self)
        navigationRouter.showScreen(vc)
    }
    
    func openChooseLoacation(_ model: SignUpModel) {
        let router = SelectLocationRouter(navigationRouter: navigationRouter)
        router.show(model)
    }
}
