// 
//  SignInBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 08.05.2023.
//

import UIKit

final class SignInBuilder {
    
    public static func build(
        coordinator: SignInRouter
    ) -> SignInViewController {
        let view = SignInView()
        let vc = SignInViewController(mainView: view)
        let presenter = SignInPresenter(view: vc, router: coordinator)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
