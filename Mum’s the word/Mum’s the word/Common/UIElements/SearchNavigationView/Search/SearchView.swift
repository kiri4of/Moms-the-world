//
//  File.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import Foundation

import UIKit

class SearchView: UIView, UITextFieldDelegate {
    private var searchTextField: UITextField!
    private var searchImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Создаем текстовое поле для поиска
        searchTextField = UITextField()
        searchTextField.delegate = self
        searchTextField.placeholder = "Search"
        searchTextField.borderStyle = .none
        layer.cornerRadius = 12
        layer.borderWidth = 2
        layer.borderColor = AppColor.purplePrimary.cgColor
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Создаем изображение "search"
        let searchImage = AppImages.magnifyingglass
        searchImageView = UIImageView(image: searchImage)
        searchImageView.contentMode = .scaleAspectFit
        searchImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Добавляем текстовое поле и изображение внутри кастомного серча
        addSubview(searchTextField)
        addSubview(searchImageView)
        
        searchTextField.snp.makeConstraints { make in
            make.leading.equalTo(searchImageView.snp.trailing).offset(16)
            make.top.bottom.equalToSuperview()
            make.trailing.equalToSuperview().inset(16)
        }
        
        // Констрейнты для изображения
        
        searchImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
            make.size.equalTo(16)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // Добавьте любую дополнительную логику или обработку событий здесь, есл
}
