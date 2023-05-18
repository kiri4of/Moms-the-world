// 
//  BusinessHoursViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 16.05.2023.
//

import UIKit

protocol BusinessHoursViewControllerProtocol: AnyObject {
    
}

final class BusinessHoursViewController: BaseViewController<BusinessHoursView> {
    
    public var presenter: BusinessHoursPresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
    }
}

extension BusinessHoursViewController: BusinessHoursViewControllerProtocol {
    
}
