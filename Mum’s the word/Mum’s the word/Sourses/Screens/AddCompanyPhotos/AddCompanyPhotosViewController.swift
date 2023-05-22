// 
//  AddCompanyPhotosViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import UIKit

protocol AddCompanyPhotosViewControllerProtocol: AnyObject {
    
}

final class AddCompanyPhotosViewController: BaseViewController<AddCompanyPhotosView> {
    
    public var presenter: AddCompanyPhotosPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        configureUI()
    }
}

extension AddCompanyPhotosViewController {
    private func configureUI() {
        hideNavigationContoroller()
    }
}

extension AddCompanyPhotosViewController: AddCompanyPhotosViewControllerProtocol {
    
}
