//
//  BaseViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

final class BaseViewController<View: UIView>: UIViewController {
    let mainView: View!
    
    init(mainView: View) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = mainView
    }
}
