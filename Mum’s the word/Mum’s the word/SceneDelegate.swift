//
//  SceneDelegate.swift
//  Mum’s the word
//
//  Created by Serega Kushnarev on 23.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?
    
    private var rootController: UINavigationController {
        window?.rootViewController = UINavigationController()
        return window?.rootViewController as! UINavigationController
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        appRouter = createRouter()
        appRouter?.showOnboarding()
        window?.makeKeyAndVisible()
    }
}

private extension SceneDelegate {
    func createRouter() -> AppRouter {
        let navigationRouter = NavigationRouter(navigationController: rootController)
        let appRouter = AppRouter(navigationRouter: navigationRouter)
        return appRouter
    }
}
