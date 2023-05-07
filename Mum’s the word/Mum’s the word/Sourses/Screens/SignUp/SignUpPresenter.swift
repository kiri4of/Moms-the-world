// 
//  SignUpPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 03.05.2023.
//

import Foundation

protocol SignUpPresenterProtocol: AnyObject {
    func openChooseLoacation(_ model: SignUpModel)
}

final class SignUpPresenter: SignUpPresenterProtocol {
    
    private weak var view: SignUpViewControllerProtocol?
    private var router: SignUpRouter?
    
    init(view: SignUpViewControllerProtocol, router: SignUpRouter) {
        self.view = view
        self.router = router
    }
    
    func openChooseLoacation(_ model: SignUpModel) {
        router?.openChooseLoacation(model)
    }
}
