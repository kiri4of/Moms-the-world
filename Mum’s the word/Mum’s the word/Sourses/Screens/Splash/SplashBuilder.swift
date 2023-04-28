// 
//  SplashBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 25.04.2023.
//

import UIKit

final class SplashBuilder {
    
    public static func build(
        router: SplashRouter
    ) -> SplashViewController {
        let view = SplashView()
        let vc = SplashViewController(mainView: view)
        let presenter = SplashPresenter(view: vc, router: router)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
