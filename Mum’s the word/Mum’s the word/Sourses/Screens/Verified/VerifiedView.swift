// 
//  VerifiedView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 18.05.2023.
//

import UIKit

protocol VerifiedViewProtocol: AnyObject {
    
}

final class VerifiedView: UIView {
    
    weak var delegate: VerifiedViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
