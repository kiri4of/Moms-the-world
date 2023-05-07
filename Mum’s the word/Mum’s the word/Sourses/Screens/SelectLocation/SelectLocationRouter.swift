// 
//  SelectLocationRouter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 05.05.2023.
//

import UIKit

final class SelectLocationRouter {
    
    private let navigationRouter: NavigationRouterProtocol
     
    init(navigationRouter: NavigationRouterProtocol) {
        self.navigationRouter = navigationRouter
    }
    
    func show(_ model: SignUpModel) {
        let vc = SelectLocationBuilder.build(router: self)
        vc.presenter.setSignUpModel(model: model)
        navigationRouter.showScreen(vc)
    }
}
