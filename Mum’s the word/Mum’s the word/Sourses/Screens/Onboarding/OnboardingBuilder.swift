// 
//  OnboardingBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

final class OnboardingBuilder {
    
    public static func build(
        coordinator: OnboardingRouter
    ) -> OnboardingViewController {
        let view = OnboardingView()
        let vc = OnboardingViewController(mainView: view)
        let presenter = OnboardingPresenter(view: vc, router: coordinator)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
