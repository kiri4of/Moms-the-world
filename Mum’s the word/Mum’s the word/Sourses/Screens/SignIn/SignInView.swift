// 
//  SignInView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 08.05.2023.
//

import UIKit
import Hero

protocol SignInViewProtocol: AnyObject {
}

final class SignInView: UIView {
    
    private var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.logoYellow
        return imageView
    }()
    
    private lazy var purpleButton = PurpleButton(bg: AppColor.purplePrimary)
    private lazy var locationPicker = DefaultTextField(
        placeHolder: "Email or phone", type: .textField)
        
    private lazy var header = TwoLabelStackVIew(
        title: AppStrings.choose,
        desc: AppStrings.chooseDesc
    )
    
    private var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.lightBg
        return imageView
    }()
    
    private lazy var stackView = UIStackView()
    
    weak var delegate: SelectLocationViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(name: String) {
        header.titleLabel.attributedText = AppStrings.addName(name)
    }
}

extension SignInView {
    private func setupViews() {
        addSubview(bgImage)
        addSubview(logoImage)
        addSubview(stackView)
        addSubview(purpleButton)
        setupConstraints()
        configureUI()
    }
    
    private func configureUI() {
        purpleButton.hero.id = "purpleButton"
        purpleButton.heroModifiers = [.translate(y: -100),.duration(0.5)]
        purpleButton.setTitle(AppStrings.nextButton, for: .normal)
        purpleButton.addTarget(self, action: #selector(nextTap), for: .touchUpInside)
    }
    
    private func setupConstraints() {
        bgImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
                
        logoImage.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(layoutMargins.top)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 110.Hadapted, height: 52.Vadapted))
        }
        
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = 16
                
        stackView.addArrangedSubviews(
            header,locationPicker
        )
        stackView.setCustomSpacing(30, after: header)
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(36)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        locationPicker.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.height.equalTo(Spacing.textFieldheight)
        }
        
        purpleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(stackView.snp.bottom).offset(40)
            make.width.greaterThanOrEqualTo(Spacing.buttonWidth)
            make.height.greaterThanOrEqualTo(Spacing.buttonHeight)
        }
       
    }
    
    @objc
    private func nextTap() {
        print("sasja")
    }
}

