// 
//  OnboardingView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

protocol OnboardingViewProtocol: AnyObject {
    
}

final class OnboardingView: UIView {
    
    weak var delegate: OnboardingViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
