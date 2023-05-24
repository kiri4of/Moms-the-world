// 
//  LocationMapBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import UIKit

final class LocationMapBuilder {
    
    public static func build(
        router: LocationMapRouter
    ) -> LocationMapViewController {
        let view = LocationMapView()
        let vc = LocationMapViewController(mainView: view)
        let presenter = LocationMapPresenter(view: vc, router: router)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
