//
//  iTunesApiServiceProvider.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

// MARK: - API Service Provider- 
class iTunesApiServiceProvider: ApiServiceProvider<iTunesSearchRequest> {
    
    init(request: iTunesSearchRequest) {
        super.init(method: .get,
                   baseUrl: BaseUrl.baseUrl.rawValue,
                   path: Paths.search.value,
                   data: request)
    }
}
