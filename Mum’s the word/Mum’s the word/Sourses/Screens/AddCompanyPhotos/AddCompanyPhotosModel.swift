// 
//  AddCompanyPhotosModel.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 19.05.2023.
//

import UIKit

enum CompanyPhotos {
    case photos
}

struct CompanyPhotosModel {
    let photos: [Photo]
    
    var isTwoPhotoAdded: Bool {
        return photos.count == 2
    }
    
    var isThreeOrMorePhotosAdded: Bool {
        return photos.count >= 3
    }
}

struct Photo {
    let image: UIImage
}


