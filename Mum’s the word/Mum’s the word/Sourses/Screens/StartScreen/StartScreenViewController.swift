// 
//  StartScreenViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 27.04.2023.
//

import UIKit
import Hero

protocol StartScreenViewControllerProtocol: AnyObject {
    
}

final class StartScreenViewController: BaseViewController<StartScreenView> {
    
    public var presenter: StartScreenPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        self.hero.isEnabled = true
    }
}

extension StartScreenViewController: StartScreenViewControllerProtocol {
    
}
