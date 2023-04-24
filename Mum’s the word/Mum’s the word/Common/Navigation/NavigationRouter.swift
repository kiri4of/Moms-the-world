//
//  NavigationRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

class NavigationRouter: NavigationRouterProtocol {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func showScreen(_ viewController: UIViewController) {
        navigationController!.pushViewController(viewController, animated: true)
    }
    
    func pop() {
        navigationController?.popViewController(animated: true)
    }
    
    func showModalScreen(_ viewController: UIViewController) {
        navigationController?.present(viewController, animated: true, completion: nil)
    }
    
    func dismissModalScreen() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
}
