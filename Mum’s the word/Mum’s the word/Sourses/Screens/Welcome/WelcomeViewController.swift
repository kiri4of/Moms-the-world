//
//  WelcomeViewController.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 25.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    private lazy var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.welcome
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.purplePrimary
        label.text = AppStrings.welcomeTitle
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
        label.font = AppFonts.sans30Bold
        return label
    }()
    
    private lazy var descLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.whitePrimary
        label.text = AppStrings.welcomeDesc
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = AppFonts.inter16Regular
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        setUI()
    }
}

extension WelcomeViewController {
    private func setUI() {
        view.addSubview(bgImage)
        
        bgImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        let stackView = UIStackView()
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descLabel)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 26
        
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.bottom.lessThanOrEqualTo(view.safeAreaLayoutGuide.snp.bottom).inset(16)
            make.leading.lessThanOrEqualTo(view.layoutMargins)
            make.leading.greaterThanOrEqualTo(view.layoutMargins)
            make.centerX.equalToSuperview()
        }
        
    }
}
