//
//  iTunesSearchRequest.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation

// MARK: - API Request Properties -
class iTunesSearchRequest: Codable {
    
    private(set) public var term: String?
    private(set) public var entity: String?
    private(set) public var offset: Int = 0
    private(set) public var limit: Int = 3
    private(set) public var trackId: Int?

    public init(term: String? = nil,
                entity: String? = nil,
                offset: Int = 0,
                limit: Int = 3,
                trackId: Int? = nil) {
        
        self.term = term
        self.entity = entity
        self.offset = offset
        self.limit = limit
        self.trackId = trackId
    }
}
