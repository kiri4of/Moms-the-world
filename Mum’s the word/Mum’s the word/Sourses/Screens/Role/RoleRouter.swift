// 
//  RoleRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 29.04.2023.
//

import UIKit

final class RoleRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = RoleBuilder.build(coordinator: self)
        navigationRouter.showScreen(vc)
    }
    
    func routeToSignUP() {
        let router = SignUpRouter(navigationRouter: navigationRouter)
        router.show()
    }
}
