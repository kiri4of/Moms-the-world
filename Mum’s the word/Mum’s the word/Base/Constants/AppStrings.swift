//
//  AppStrings.swift
//  Mum’s the word
//
//  Created by Александр Александрович on 25.04.2023.
//

import Foundation

enum AppStrings {
    static let welcomeTitle = "Welcome to \nMum’s the word"
    static let welcomeDesc = "The best helper for parents and \nbusiness"
    
    static let onboardingFirstScreenTitle = "Find best place \nfor your child"
    static let onboardingFirstScreenDesc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed."
    
    static let onboardingSecondScreenTitle = "Are you a teacher and \nfind students? Join us "
    
    static let onboardingThirdScreenTitle = "Chat with other parents \nand change experiences"
    
    static let skip = "skip"
    
    static let gradinetFirst = "best place"
    
    static let gradientSecond = "Join us"
    
    static let gradientThird = "Chat with other parents"
    
    static let swipeToLearnMore = "Swipe to learn more"
    
    static let nextButton = "Next"
    static let loginButton = "Login"
    
    static let startScreen = "Let’s start with \nMum’s the word"
    static let startGradientWord = "Mum’s the word"
    
    static let parenRole = "I’m a Parent"
    static let businessRole = "Business"
    static let mockRoleDesc = "Role’s description"
    
    static let choose = "Choose Your role"
    static let chooseDesc = "quis nostrud exercitation ullamco laboris nisi ut"
    
    static let letsStart = "Let’s Start"
    
    static let underLineLogin = "I’m already have an account. Log in"
    static let chWordLogin = "Log in"
    
    static let descStart = "Hey, sign up to get things started!"
    static let userAgreement = "I accept the terms of the User Agreement"
    static let chWordUserAgreement = "User Agreement"
    
    static let stepperTitle = "Children’s"
    
    static let confirmationCode = "Enter confirmation code"
    
    static let descSignIn = "Hey, sign in to get things started!"
    
    static let signInHeader = "Sign in"
    
    static let remember = "Remember me"
    
    static let resend = "Resend code"
    
    static func addName(_ name: String) -> NSMutableAttributedString {
        let string = "Welcome, "
        let mutableString = NSMutableAttributedString(string: string)
        let range = (string as NSString).range(of: string)
        mutableString.addAttributes([.font: AppFonts.sans24Regular], range: range)
        let name = NSAttributedString(string: name.isEmpty ? "Unknown" : name)
        mutableString.append(name)
        return mutableString
    }
    
    static func addEmailOrPhone(_ text: String) -> String {
        let str = "A 6-digit code was sent to \(text)"
        return str
    }
}

