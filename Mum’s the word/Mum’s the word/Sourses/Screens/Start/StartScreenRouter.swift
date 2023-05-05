// 
//  StartScreenRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 27.04.2023.
//

import UIKit

final class StartScreenRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = StartScreenBuilder.build(router: self)
        navigationRouter.changeStack(vc)
    }
    
    func routeLogin() {
        
    }
    
    func routeNextStep() {
        let router = RoleRouter(navigationRouter: navigationRouter)
        router.show()
    }
}
