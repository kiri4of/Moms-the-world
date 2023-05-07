// 
//  SelectLocationViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 05.05.2023.
//

import UIKit

protocol SelectLocationViewControllerProtocol: AnyObject {
    func updateName(name: String)
}

final class SelectLocationViewController: BaseViewController<SelectLocationView> {
    
    public var presenter: SelectLocationPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
    }
}

extension SelectLocationViewController: SelectLocationViewControllerProtocol {
    func updateName(name: String) {
        mainView.update(name: name)
    }
}
