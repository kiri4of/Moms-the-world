// 
//  StartScreenPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 27.04.2023.
//

import Foundation

protocol StartScreenPresenterProtocol: AnyObject {
    
}

final class StartScreenPresenter: StartScreenPresenterProtocol {
    
    private weak var view: StartScreenViewControllerProtocol?
    private var router: StartScreenRouter?
    
    init(view: StartScreenViewControllerProtocol, router: StartScreenRouter) {
        self.view = view
        self.router = router
    }
}
