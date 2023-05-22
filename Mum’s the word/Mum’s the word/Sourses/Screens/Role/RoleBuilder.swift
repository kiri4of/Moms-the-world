// 
//  RoleBuilder.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 29.04.2023.
//

import UIKit

final class RoleBuilder {
    
    public static func build(
        coordinator: RoleRouter
    ) -> RoleViewController {
        let view = RoleView(.dark)
        let vc = RoleViewController(mainView: view)
        let presenter = RolePresenter(view: vc, router: coordinator)
        
        vc.presenter = presenter
        
        return vc
    }
    
}
