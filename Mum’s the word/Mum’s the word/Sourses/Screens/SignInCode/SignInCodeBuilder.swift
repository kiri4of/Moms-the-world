// 
//  SignInCodeBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 11.05.2023.
//

import UIKit

final class SignInCodeBuilder {
    
    public static func build(
        router: SignInCodeRouter
    ) -> SignInCodeViewController {
        let view = SignInCodeView()
        let vc = SignInCodeViewController(mainView: view)
        let presenter = SignInCodePresenter(view: vc, router: router)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
