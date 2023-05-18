// 
//  UploadLogoView.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 13.05.2023.
//

import UIKit
import Hero

protocol UploadLogoViewProtocol: AnyObject {
    func openChooseLoacation(_ model: SignUpModel)
}

final class UploadLogoView: UIView {
            
    private var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.logoYellow
        return imageView
    }()
    
    private(set) lazy var purpleButton = PurpleButton(bg: AppColor.Gradient.yellow)
    private(set) lazy var chooseLogoView = ChooseLogoView(frame: .zero)
    
    private(set) lazy var card = CompanyCardView()
    
    private lazy var header = TwoLabelStackVIew(
        title: AppStrings.uploadLogo,
        desc: AppStrings.descUploadLogo
    )
    
    private var bgImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = AppImages.role
        return imageView
    }()
    
    private lazy var stackView = UIStackView()
    
    weak var delegate: UploadLogoViewProtocol?
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UploadLogoView {
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
        let width = 200.Hadapted
        
        let containterView = ContainterView(view: chooseLogoView) { view in
            view.snp.makeConstraints { make in
                make.centerX.centerY.equalToSuperview()
                make.size.equalTo(CGSize(width: width, height: width))
            }
        }
                
        stackView.addArrangedSubviews(
            header,containterView,card
        )
        
        stackView.setCustomSpacing(30, after: header)
        stackView.setCustomSpacing(40, after: containterView)
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(36)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        containterView.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.height.equalTo(width)
        }
        
        card.snp.makeConstraints { make in
            make.width.equalTo(stackView)
        }
        
        purpleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
            make.width.greaterThanOrEqualTo(Spacing.buttonWidth)
            make.height.greaterThanOrEqualTo(Spacing.buttonHeight)
        }
        purpleButton.setTitle(AppStrings.nextButton, for: .normal)
        purpleButton.addTarget(self, action: #selector(nextTap), for: .touchUpInside)
    }
    
    @objc
    private func nextTap() {
       print("Sasha")
    }
}


