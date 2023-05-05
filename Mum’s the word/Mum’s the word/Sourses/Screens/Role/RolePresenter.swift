// 
//  RolePresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 29.04.2023.
//

import Foundation

protocol RolePresenterProtocol: AnyObject {
    func routeToSignUP()
}

final class RolePresenter: RolePresenterProtocol {
    
    private weak var view: RoleViewControllerProtocol?
    private var router: RoleRouter?
    
    init(view: RoleViewControllerProtocol, router: RoleRouter) {
        self.view = view
        self.router = router
    }
    
    func routeToSignUP() {
        router?.routeToSignUP()
    }
}
