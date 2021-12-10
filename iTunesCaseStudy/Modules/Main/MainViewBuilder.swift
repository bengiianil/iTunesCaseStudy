//
//  MainViewBuilder.swift
//  UIComponents
//
//  Created by Bengi on 5.10.2021.
//

import UIKit

// MARK: - Main View Build Function -
class MainViewBuilder {
    
    class func build() -> UIViewController {
        
        let formatter = MainViewDataFormatter()
        let viewModel = MainViewModel(formatter: formatter)
        let viewController = MainViewController(viewModel: viewModel)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        viewController.title = "iTunes Store"
        viewController.tabBarItem.image = TabBarImages.home.value
        viewController.tabBarItem.selectedImage = TabBarImages.homeSelected.value
        
        return navigationViewController
    }
}
