// 
//  SignInPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 08.05.2023.
//

import Foundation

protocol SignInPresenterProtocol: AnyObject {
    
}

final class SignInPresenter: SignInPresenterProtocol {
    
    private weak var view: SignInViewControllerProtocol?
    private var router: SignInRouter?
    
    init(view: SignInViewControllerProtocol, router: SignInRouter) {
        self.view = view
        self.router = router
    }
}
