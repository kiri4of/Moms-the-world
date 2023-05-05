// 
//  SelectLocationPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 05.05.2023.
//

import Foundation

protocol SelectLocationPresenterProtocol: AnyObject {
    func setSignUpModel(model: SignUpModel)
}

final class SelectLocationPresenter: SelectLocationPresenterProtocol {
    
    private weak var view: SelectLocationViewControllerProtocol?
    private var router: SelectLocationRouter?
    
    init(view: SelectLocationViewControllerProtocol, router: SelectLocationRouter) {
        self.view = view
        self.router = router
    }
    
    func setSignUpModel(model: SignUpModel) {
        view?.updateName(name: model.name)
    }
}
