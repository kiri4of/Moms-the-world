// 
//  RoleView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 29.04.2023.
//

import UIKit
import Hero

protocol RoleViewProtocol: AnyObject {
    func routeToSignUP()
}

final class RoleView: UIView {
    
    private var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.logoYellow
        return imageView
    }()
    
    private lazy var parentRoleButton =  RoleButton()
    private lazy var businessRoleButton = RoleButton()
    private lazy var purpleButton = PurpleButton(bg: AppColor.Gradient.yellow)
    
    private lazy var tapAbleLabel: TapableLabel = {
        let label = TapableLabel(
            text: AppStrings.underLineLogin,
            tapWord: AppStrings.chWordLogin ,
            attr: .white) {
                print("Sasha")
            }
        label.textColor = .white
        label.font = AppFonts.inter14Bold
        return label
    }()
    
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
    
    weak var delegate: RoleViewProtocol?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RoleView {
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
            header,parentRoleButton,businessRoleButton,tapAbleLabel
        )
        stackView.setCustomSpacing(30, after: header)
        stackView.setCustomSpacing(24, after: businessRoleButton)
        
        businessRoleButton.updateUI(Roles.business.getModel())
        
        parentRoleButton.updateUI(Roles.parent.getModel())
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(36)
            make.centerX.equalToSuperview()
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
        configureUI()
    }
    
    private func configureUI() {
        let buttons: [RoleButton] = [parentRoleButton, businessRoleButton]
        buttons.forEach { v in
            v.handler = { model in
                buttons.forEach { $0.changeUI(isClear: true) }
                v.changeUI(isClear: false)
            }
        }
    }
    
    @objc
    private func nextTap() {
        delegate?.routeToSignUP()
    }
}

