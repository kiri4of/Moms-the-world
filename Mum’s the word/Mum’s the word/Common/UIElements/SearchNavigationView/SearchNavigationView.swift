//
//  SearchNavigationView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 23.05.2023.
//

import UIKit

final class SearchNavigationView: UIView {
    
    var backDidTap: (() -> ())?
    
    private(set) lazy var backNavigationView = BackNavigationView()
    private(set) lazy var searchView = SearchView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchNavigationView {
    private func setupUI() {
        addSubview(backNavigationView)
        addSubview(searchView)
        
        backNavigationView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.width.equalToSuperview()
            make.height.equalTo(56)
        }
        
        searchView.snp.makeConstraints { make in
            make.top.equalTo(backNavigationView.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(48.Vadapted)
        }
        
        configureUI()
    }
    
    private func configureUI() {
        backNavigationView.backTap = { [weak self] in
            self?.backDidTap?()
        }
    }
}
