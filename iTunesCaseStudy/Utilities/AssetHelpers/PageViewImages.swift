//
//  PageViewImages.swift
//  UIComponents
//
//  Created by Bengi on 9.10.2021.
//

import Foundation
import UIKit

// MARK: - Splash View Image -
enum PageViewImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case itunesSplashScreen = "itunesSplashScreen"
}
