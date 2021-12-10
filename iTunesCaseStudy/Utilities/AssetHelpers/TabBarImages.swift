//
//  TabBarImages.swift
//  UIComponents
//
//  Created by Bengi on 5.10.2021.
//

import UIKit

// MARK: - TabBar Images -
enum TabBarImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case detail = "detail"
    case detailSelected = "detailSelected"
    case home = "home"
    case homeSelected = "homeSelected"
}
