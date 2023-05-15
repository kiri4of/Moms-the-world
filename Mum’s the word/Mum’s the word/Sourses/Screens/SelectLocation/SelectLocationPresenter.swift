// 
//  SelectLocationPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 05.05.2023.
//

import Foundation

protocol SelectLocationPresenterProtocol: AnyObject {
    func setSignUpModel(model: SignUpModel)
    func setRole(_ role: Roles)
}

final class SelectLocationPresenter: SelectLocationPresenterProtocol {
    
    private weak var view: SelectLocationViewControllerProtocol?
    private var router: SelectLocationRouter?
    
    private var role: Roles?
    
    init(view: SelectLocationViewControllerProtocol, router: SelectLocationRouter) {
        self.view = view
        self.router = router
    }
    
    func setSignUpModel(model: SignUpModel) {
        view?.updateName(name: model.name)
    }
    
    func setRole(_ role: Roles) {
        self.role = role
    }
}
