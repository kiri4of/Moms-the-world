// 
//  SignInRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 08.05.2023.
//

import UIKit

final class SignInRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = SignInBuilder.build(coordinator: self)
        navigationRouter.showScreen(vc)
    }
    
    func routeToCode(text: SignInCodeModel) {
        let router = SignInCodeRouter(navigationRouter: navigationRouter)
        navigationRouter.chooseAnimationTransition(type: .fade)
        router.show(text)
    }
}
