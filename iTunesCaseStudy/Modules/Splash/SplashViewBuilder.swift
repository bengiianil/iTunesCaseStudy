//
//  SplashViewBuilder.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 16.10.2021.
//

import UIKit

// MARK: - Splash View Builder -
class SplashViewBuilder {
    
    class func build(with completion: @escaping VoidBlock) -> UIViewController {
        let viewModel = SplashViewModel(completion: completion)
        return SplashViewController(viewModel: viewModel)
    }
    
}
