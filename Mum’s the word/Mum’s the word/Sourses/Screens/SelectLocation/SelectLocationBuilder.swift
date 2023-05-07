// 
//  SelectLocationBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 05.05.2023.
//

import UIKit

final class SelectLocationBuilder {
    
    public static func build(
        router: SelectLocationRouter
    ) -> SelectLocationViewController {
        let view = SelectLocationView()
        let vc = SelectLocationViewController(mainView: view)
        let presenter = SelectLocationPresenter(view: vc, router: router)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
