// 
//  AddCompanyPhotosPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import Foundation

protocol AddCompanyPhotosPresenterProtocol: AnyObject {
    
}

final class AddCompanyPhotosPresenter: AddCompanyPhotosPresenterProtocol {
    
    private weak var view: AddCompanyPhotosViewControllerProtocol?
    private var router: AddCompanyPhotosRouter?
    
    init(view: AddCompanyPhotosViewControllerProtocol, router: AddCompanyPhotosRouter) {
        self.view = view
        self.router = router
    }
}
