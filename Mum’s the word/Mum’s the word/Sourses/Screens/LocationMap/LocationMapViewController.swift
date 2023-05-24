// 
//  LocationMapViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import UIKit

protocol LocationMapViewControllerProtocol: AnyObject {
    
}

final class LocationMapViewController: BaseViewController<LocationMapView> {
    
    public var presenter: LocationMapPresenterProtocol!
    private lazy var navView = SearchNavigationView()
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        hideNavigationContoroller()
        setupNavigationView()
    }
}

extension LocationMapViewController {
    private func setupNavigationView() {
        mainView.addSubview(navView)
        navView.backNavigationView.updateTitle()
        navView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(193.Vadapted)
        }
        
        navView.backDidTap = { [weak self] in
            self?.presenter.pop()
        }
        
        hero.isEnabled = false
    }
}

extension LocationMapViewController: LocationMapViewControllerProtocol {
    
}
