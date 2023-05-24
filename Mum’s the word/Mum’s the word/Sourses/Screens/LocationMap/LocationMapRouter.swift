// 
//  LocationMapRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import UIKit

final class LocationMapRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show() {
        let vc = LocationMapBuilder.build(router: self)
        navigationRouter.showScreen(vc)
    }
    
    func pop() {
        navigationRouter.chooseAnimationTransition(type: .slide(direction: .right))
        navigationRouter.pop()
    }
}
