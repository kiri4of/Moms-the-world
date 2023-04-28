// 
//  StartScreenView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 27.04.2023.
//

import UIKit
import Hero

protocol StartScreenViewProtocol: AnyObject {
    
}

final class StartScreenView: UIView {
    
    weak var delegate: StartScreenViewProtocol?
    
    var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.start
        return imageView
    }()
    
    private lazy var purpleButton = PurpleButton()
    private lazy var loginButton = PurpleButton(bg: UIColor.white.withAlphaComponent(0.5))
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.primaryBlack
        label.text = AppStrings.startScreen
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
        label.font = AppFonts.sans30Bold
        return label
    }()
    
    private lazy var navigationView = NavigationOnboadingView()
    
    var stackView: UIStackView!
    
    lazy var descLabel: UILabel = {
        let label = UILabel()
        label.textColor = AppColor.descriptionGray
        label.text = "The best helper for parents and business"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = AppFonts.inter14Regular
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        bgImage.layer.cornerRadius = 40.0
        bgImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        purpleButton.hero.id = "purpleButton"
        purpleButton.heroModifiers = [.translate(y: -100)]
        loginButton.heroModifiers = [.fade, .scale(0.1), .duration(1)]
        let firstColor = #colorLiteral(red: 1, green: 0.5098039216, blue: 0.9333333333, alpha: 1)
        let secondColor = #colorLiteral(red: 1, green: 0.7647058824, blue: 0.1607843137, alpha: 1)
        let colors = [secondColor,firstColor]
        layoutIfNeeded()
        stackView.layoutIfNeeded()
        titleLabel.setGradientText("Mum’s the word", gradientColors: colors)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension StartScreenView {
    private func setUI() {
        addSubview(bgImage)
        backgroundColor = .white
        bgImage.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.lessThanOrEqualToSuperview().dividedBy(1.7)
        }
        bgImage.clipsToBounds = true
        bgImage.layer.masksToBounds = true
        
        
        stackView = UIStackView()
        
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descLabel)
        
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 16
        
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(layoutMargins).inset(16)
            make.top.equalTo(safeAreaLayoutGuide).offset(96)
        }
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 16
        
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.lessThanOrEqualTo(safeAreaLayoutGuide).inset(Spacing.height)
        }
        
        [purpleButton,loginButton].forEach { view in
            view.snp.makeConstraints { make in
                make.size.equalTo(CGSize(width: Spacing.buttonWidth, height: Spacing.buttonHeight))
            }
        }
        
        stackView.addArrangedSubview(purpleButton)
        stackView.addArrangedSubview(loginButton)
        loginButton.addBorder()
       
        purpleButton.setTitle(AppStrings.nextButton, for: .normal)
        loginButton.setTitle("Login", for: .normal)
        
        addSubview(navigationView)
        navigationView.skipButton.isHidden = true
        
        navigationView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(layoutMargins).inset(Spacing.defaultSpacing)
            make.height.greaterThanOrEqualTo(Spacing.height)
            make.top.equalTo(safeAreaLayoutGuide).offset(layoutMargins.top)
        }
    }
}
