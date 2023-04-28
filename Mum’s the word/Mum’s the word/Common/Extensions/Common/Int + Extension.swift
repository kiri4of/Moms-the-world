//
//  Int + Extension.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 26.04.2023.
//

import UIKit

extension Int {
    var Vadapted: CGFloat {
        adapted(dimensionSize: CGFloat(self), to: .height)
    }
    
    var Hadapted: CGFloat {
        adapted(dimensionSize: CGFloat(self), to: .width)
    }
}
