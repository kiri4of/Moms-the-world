// 
//  VerifiedRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 18.05.2023.
//

import UIKit

final class VerifiedRouter {
    
    private let navigationRouter: NavigationRouterProtocol
        
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
}
