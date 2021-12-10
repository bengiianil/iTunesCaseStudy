//
//  AppLocalizables.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 1.11.2021.
//

import Foundation

enum AppLocalizables: String, GenericValueProtocol {
    
    typealias Value = String
    
    var value: String {
        return rawValue.toLocalize()
    }
    case appEntity = "software"
    case bookEntity = "ebook"
    case movieEntity = "movie"
    case musicEntity = "musicTrack"
}
