// 
//  SignUpViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 03.05.2023.
//

import UIKit

protocol SignUpViewControllerProtocol: AnyObject {
}

final class SignUpViewController: BaseViewController<SignUpView> {
    
    public var presenter: SignUpPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        mainView.delegate = self
    }
}

extension SignUpViewController: SignUpViewProtocol {
    func openChooseLoacation(_ model: SignUpModel) {
        presenter.openChooseLoacation(model)
    }
}

extension SignUpViewController: SignUpViewControllerProtocol {
}
