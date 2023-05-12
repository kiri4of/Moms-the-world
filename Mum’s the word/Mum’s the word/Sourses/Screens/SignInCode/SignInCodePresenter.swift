// 
//  SignInCodePresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 11.05.2023.
//

import Foundation

protocol SignInCodePresenterProtocol: AnyObject {
    func setSignInModel(model: SignInCodeModel)
}

final class SignInCodePresenter: SignInCodePresenterProtocol {
    
    private weak var view: SignInCodeViewControllerProtocol?
    private var router: SignInCodeRouter?
    
    init(view: SignInCodeViewControllerProtocol, router: SignInCodeRouter) {
        self.view = view
        self.router = router
    }
    
    func setSignInModel(model: SignInCodeModel) {
        view?.updateDesc(model.phoneOrEmail)
    }
}
