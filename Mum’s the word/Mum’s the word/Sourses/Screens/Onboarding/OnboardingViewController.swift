// 
//  OnboardingViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

protocol OnboardingViewControllerProtocol: AnyObject {
    
}

final class OnboardingViewController: BaseViewController<OnboardingView> {
    
    public var presenter: OnboardingPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
    }
}

extension OnboardingViewController: OnboardingViewControllerProtocol {
    
}
