//
//  AppThemeColors.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import UIKit

// MARK: - Application Theme Colors -
enum AppThemeColors: GenericValueProtocol {
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .pinky:
            return #colorLiteral(red: 0.7176470588, green: 0.4431372549, blue: 0.6274509804, alpha: 1)
        case .appGray:
            return #colorLiteral(red: 0.8196078431, green: 0.8196078431, blue: 0.8196078431, alpha: 1)
        }
    }
    case pinky
    case appGray
}
