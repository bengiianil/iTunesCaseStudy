//
//  PaginationInfo.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 23.10.2021.
//

import Foundation

// MARK: - Pagination Properties -
struct PaginationInfo {
    var resultCount: Int = 0
    var limit: Int = 20
    var offset: Int = 0
    var fetching: Bool = false
    
    func checkLoadingMore() -> Bool {
        return limit <= resultCount && !fetching
    }
    
    mutating func nextOffset() {
        fetching = true
        offset += limit
    }
}
