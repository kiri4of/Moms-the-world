// 
//  LocationMapPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import Foundation

protocol LocationMapPresenterProtocol: AnyObject {
    func pop()
}

final class LocationMapPresenter: LocationMapPresenterProtocol {
    
    private weak var view: LocationMapViewControllerProtocol?
    private var router: LocationMapRouter?
    
    init(view: LocationMapViewControllerProtocol, router: LocationMapRouter) {
        self.view = view
        self.router = router
    }
    
    func pop() {
        router?.pop()
    }
}
