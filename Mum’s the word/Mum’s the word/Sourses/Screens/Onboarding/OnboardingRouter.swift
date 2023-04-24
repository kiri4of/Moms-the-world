//
//  OnboardingRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

final class OnboardingRouter {
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func showOnboarding() {
        let vc = ViewController()
        navigationRouter.showScreen(vc)
    }
}
