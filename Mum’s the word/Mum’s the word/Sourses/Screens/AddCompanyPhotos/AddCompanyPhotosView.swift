// 
//  AddCompanyPhotosView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import UIKit

protocol AddCompanyPhotosViewProtocol: AnyObject {
    
}

final class AddCompanyPhotosView: LoginView {
    
    weak var delegate: AddCompanyPhotosViewProtocol?
    
    
    override init(_ type: LoginView.ViewType) {
        super.init(type)
    }
}
