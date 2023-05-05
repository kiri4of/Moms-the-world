// 
//  StartScreenViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 27.04.2023.
//

import UIKit
import Hero

protocol StartScreenViewControllerProtocol: AnyObject {
    
}

final class StartScreenViewController: BaseViewController<StartScreenView> {
    
    public var presenter: StartScreenPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        mainView.delegate = self
    }
}

extension StartScreenViewController: StartScreenViewProtocol {
    func routeLogin() {
        presenter.routeToLogin()
    }
    
    func routeNextStep() {
        presenter.routeToNextStep()
    }
}

extension StartScreenViewController: StartScreenViewControllerProtocol {
    
}
