// 
//  OnboardingPresenter.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import Foundation

protocol OnboardingPresenterProtocol: AnyObject {
    
}

final class OnboardingPresenter: OnboardingPresenterProtocol {
    
    private weak var view: OnboardingViewControllerProtocol?
    private var router: OnboardingRouter?
    
    init(view: OnboardingViewControllerProtocol, router: OnboardingRouter) {
        self.view = view
        self.router = router
    }
}
