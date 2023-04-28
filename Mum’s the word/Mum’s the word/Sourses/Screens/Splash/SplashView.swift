// 
//  SplashView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 25.04.2023.
//

import UIKit
import SnapKit

protocol SplashViewProtocol: AnyObject {
    
}

final class SplashView: UIView {
    
    private lazy var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.bg
        return imageView
    }()
    
    private lazy var bubleLoader = BubleLoader(frame: .zero)
    
    weak var delegate: SplashViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SplashView {
    private func setUI() {
        addSubview(bgImage)
        bgImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        addSubview(bubleLoader)
        bubleLoader.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.lessThanOrEqualToSuperview().inset(86)
            make.size.equalTo(CGSize(width: 58, height: 60))
        }
        bubleLoader.startAnimating()
    }
}
