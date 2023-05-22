// 
//  AddCompanyPhotosBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import UIKit

final class AddCompanyPhotosBuilder {
    
    public static func build(
        router: AddCompanyPhotosRouter
    ) -> AddCompanyPhotosViewController {
        let view = AddCompanyPhotosView(.dark)
        let vc = AddCompanyPhotosViewController(mainView: view)
        let presenter = AddCompanyPhotosPresenter(view: vc, router: router)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
