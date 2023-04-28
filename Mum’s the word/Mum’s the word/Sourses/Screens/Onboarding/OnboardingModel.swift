// 
//  OnboardingModel.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 24.04.2023.
//

import UIKit

struct OnboardingModel {
    let title: String
    let wordGradient: String
    let desc: String
    let image: UIImage?
    let type: TypeOfGradinet
    var gradientColors: [UIColor] = []
    
    enum TypeOfGradinet {
        case dark
        case light
    }
    
    mutating func getColots() {
        switch self.type {
        case .dark:
            let firstColor = #colorLiteral(red: 0.2345032394, green: 0.3246327043, blue: 0.9795067906, alpha: 1)
            let secondColor = #colorLiteral(red: 1, green: 0.3620835543, blue: 0.7334597707, alpha: 1)
            gradientColors = [firstColor,secondColor]
        case .light:
            let firstColor = #colorLiteral(red: 1, green: 0.5098039216, blue: 0.9333333333, alpha: 1)
            let secondColor = #colorLiteral(red: 1, green: 0.7647058824, blue: 0.1607843137, alpha: 1)
            gradientColors = [secondColor,firstColor]
        }
    }
}

let defaultOnboardingModel: [OnboardingModel] = [
    OnboardingModel(
        title: AppStrings.onboardingFirstScreenTitle,
        wordGradient: AppStrings.gradinetFirst,
        desc: AppStrings.onboardingFirstScreenDesc,
        image: AppImages.onboardingFirstScreen, type: .dark),
        OnboardingModel(
        title: AppStrings.onboardingSecondScreenTitle,
        wordGradient: AppStrings.gradientSecond,
        desc: AppStrings.onboardingFirstScreenDesc,
        image: AppImages.onboardingSecondScreen, type: .light),
    OnboardingModel(
        title: AppStrings.onboardingThirdScreenTitle,
        wordGradient: AppStrings.gradientThird,
        desc: AppStrings.onboardingFirstScreenDesc,
        image: AppImages.onboardingThirdScreen, type: .dark)
]


