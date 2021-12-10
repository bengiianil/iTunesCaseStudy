//
//  MainViewStates.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation

// MARK: - Application View Data States -
typealias MainViewStatesBlock = (ViewStates) -> Void

enum ViewStates {
    
    case loading
    case done
    case failure
    
}
