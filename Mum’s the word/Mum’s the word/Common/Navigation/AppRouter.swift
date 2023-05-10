//
//  AppRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

final class AppRouter {
    private let navigationRouter: NavigationRouterProtocol
    private lazy var splashRouter: SplashRouter? = SplashRouter(navigationRouter: navigationRouter)
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
}

extension AppRouter {
    func showOnboarding() {
        let router = SignInRouter(navigationRouter: navigationRouter)
        //router.showOnboarding()
        router.show()
    }
    
    func showSplash(scene: UIWindowScene, completion: @escaping () -> ()) {
        splashRouter?.scene = scene
        splashRouter?.present()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            completion()
            self.splashRouter?.dismiss(completion: { [weak self] in
                self?.splashRouter = nil
                
            })
        }
    }
}
