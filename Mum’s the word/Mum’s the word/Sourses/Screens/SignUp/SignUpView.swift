// 
//  SignUpView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 03.05.2023.
//

import UIKit
import Hero

protocol SignUpViewProtocol: AnyObject {
    func openChooseLoacation(_ model: SignUpModel)
}

final class SignUpView: UIView {
    
    private var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.logoYellow
        return imageView
    }()
    
    private lazy var purpleButton = PurpleButton(bg: AppColor.Gradient.yellow)
    private lazy var nameTextField = DefaultTextField(placeHolder: "Name")
    private lazy var emailTextField = DefaultTextField(placeHolder: "Email")
    
    private lazy var privacyStackView = PrivacyStackView()
    
    private lazy var header = TwoLabelStackVIew(
        title: AppStrings.choose,
        desc: AppStrings.chooseDesc
    )
    
    private var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.role
        return imageView
    }()
    
    private lazy var stackView = UIStackView()
    
    weak var delegate: SignUpViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SignUpView {
    private func setupUI() {
        addSubview(bgImage)
        addSubview(logoImage)
        addSubview(stackView)
        addSubview(purpleButton)
        
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
            header,nameTextField,emailTextField,privacyStackView
        )
        stackView.setCustomSpacing(30, after: header)
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(36)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        [nameTextField,emailTextField].forEach { textF in
            textF.snp.makeConstraints { make in
                make.width.equalTo(stackView)
                make.height.equalTo(Spacing.textFieldheight)
            }
        }
        
        purpleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(stackView.snp.bottom).offset(40)
            make.width.greaterThanOrEqualTo(Spacing.buttonWidth)
            make.height.greaterThanOrEqualTo(Spacing.buttonHeight)
        }
        purpleButton.hero.id = "purpleButton"
        purpleButton.heroModifiers = [.translate(y: -100),.duration(0.5)]
        purpleButton.setTitle(AppStrings.nextButton, for: .normal)
        purpleButton.addTarget(self, action: #selector(nextTap), for: .touchUpInside)
    }
    
    @objc
    private func nextTap() {
        if
            let name = nameTextField.text,
            let email = emailTextField.text {
            let privacy = privacyStackView.isAccepted
            let model = SignUpModel(name: name, email: email, privacy: privacy)
            delegate?.openChooseLoacation(model)
        }
    }
}

