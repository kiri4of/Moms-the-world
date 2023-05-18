// 
//  BusinessHoursView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 16.05.2023.
//

import UIKit

protocol BusinessHoursViewProtocol: AnyObject {
    
}

final class BusinessHoursView: UIView {
    
    weak var delegate: BusinessHoursViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
