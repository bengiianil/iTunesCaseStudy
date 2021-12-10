//
//  EndpointHelper.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation
import UIKit

// MARK: - API Endpoints -
typealias BaseUrl = EndpointHelper.BaseUrl
typealias Paths = EndpointHelper.Path

enum EndpointHelper {
                    
    enum BaseUrl: String {
        case baseUrl = "https://itunes.apple.com"
    }

    enum Path: GenericValueProtocol {
        typealias Value = String
        var value: String {
            switch self {
            case .search:
                return "search"
            }
        }
        case search
    }
}
                
