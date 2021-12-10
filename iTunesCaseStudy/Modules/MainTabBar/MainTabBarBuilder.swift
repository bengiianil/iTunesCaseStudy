//
//  MainTabBarBuilder.swift
//  UIComponents
//
//  Created by Bengi on 5.10.2021.
//

import UIKit

// MARK: - TabBar Properties -
 class MainTabBarBuilder {
     
     class func build() -> UIViewController {
         let mainViewController = MainViewBuilder.build()
         let tabViewController = MainTabBarController()
         tabViewController.viewControllers = [mainViewController]
         tabViewController.tabBar.backgroundColor = .systemBackground
         tabViewController.tabBar.tintColor = .black
         return tabViewController
     }
 }
 
