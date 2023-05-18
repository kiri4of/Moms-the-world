// 
//  VerifiedViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 18.05.2023.
//

import UIKit

protocol VerifiedViewControllerProtocol: AnyObject {
    
}

final class VerifiedViewController: BaseViewController<VerifiedView> {
    
    public var presenter: VerifiedPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
    }
}

extension VerifiedViewController: VerifiedViewControllerProtocol {
    
}
