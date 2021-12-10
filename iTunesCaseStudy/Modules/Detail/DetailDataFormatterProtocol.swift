//
//  ItemDetailDataFormatterProtocol.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import Foundation

protocol DetailDataFormatterProtocol {
    
    func convertItemDetailView(from data: ApiDataResult?) -> DetailViewData
}

