//
//  iTunesSearchResponse.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

// MARK: - API Response -
import Foundation

// MARK: - ITunesSearchResponse
struct ITunesSearchResponse: Codable {
  
    let resultCount: Int?
    let results: [ApiDataResult]
    init(resultCount: Int, results: [ApiDataResult]) {
        self.resultCount = resultCount
        self.results = results
    }
}

// MARK: - ApiDataResult
struct ApiDataResult: Codable {

    let collectionName: String?
    let trackCensoredName: String?
    let artistName: String?
    let trackName: String?
        
    let collectionPrice: Double?
    let trackPrice: Double?
    let formattedPrice: String?
    
    let artworkUrl100: String?
    let primaryGenreName: String?
    let releaseDate: String
    let averageUserRating: Double?
    
    let trackId: Int?

    let shortDescription: String?
    let longDescription: String?
    let description: String?
    

    enum CodingKeys: String, CodingKey {
        case collectionName, trackCensoredName, artistName, trackName,
             collectionPrice, trackPrice, formattedPrice, trackId,
             artworkUrl100, releaseDate, primaryGenreName, averageUserRating,
             description, shortDescription, longDescription
    }
}
