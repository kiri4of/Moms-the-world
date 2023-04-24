//
//  AppRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

final class AppRouter {
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
}

extension AppRouter {
    func showOnboarding() {
        let router = OnboardingRouter(navigationRouter: navigationRouter)
        router.showOnboarding()
    }
}
