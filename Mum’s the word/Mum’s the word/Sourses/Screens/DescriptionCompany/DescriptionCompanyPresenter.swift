// 
//  DescriptionCompanyPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import Foundation

protocol DescriptionCompanyPresenterProtocol: AnyObject {
    func routeToBusinessHours()
}

final class DescriptionCompanyPresenter: DescriptionCompanyPresenterProtocol {
    
    private weak var view: DescriptionCompanyViewControllerProtocol?
    private var router: DescriptionCompanyRouter?
    
    init(view: DescriptionCompanyViewControllerProtocol, router: DescriptionCompanyRouter) {
        self.view = view
        self.router = router
    }
    
    func routeToBusinessHours() {
        router?.routeToBuisinessHours()
    }
}
