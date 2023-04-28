//
//  NavigationRouterProtocol.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit
import Hero

protocol NavigationRouterProtocol: AnyObject {
    func showScreen(_ viewController: UIViewController)
    func pop()
    func showModalScreen(_ viewController: UIViewController)
    func dismissModalScreen()
    func chooseAnimationTransition(type: HeroDefaultAnimationType)
    func changeStack(_ viewController: UIViewController)
}

