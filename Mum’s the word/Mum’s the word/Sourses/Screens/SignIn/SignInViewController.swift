// 
//  SignInViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 08.05.2023.
//

import UIKit

protocol SignInViewControllerProtocol: AnyObject {
    
}

final class SignInViewController: BaseViewController<SignInView> {
    
    public var presenter: SignInPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        hideNavigationContoroller()
    }
}

extension SignInViewController: SignInViewControllerProtocol {
    
}
