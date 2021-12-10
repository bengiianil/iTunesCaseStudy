//
//  DetailViewData.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import Foundation
import UIKit

// MARK: - Detail View Datas -
class DetailViewData {
    
    private(set) var nameData: LabelPackComponentData
    private(set) var imageData: CustomImageViewComponentData
    private(set) var artistNameData: LabelPackComponentData
    private(set) var genreData: LabelPackComponentData
    private(set) var rateData: LabelPackComponentData
    private(set) var priceData: LabelPackComponentData
    private(set) var releaseDateData: LabelPackComponentData
    private(set) var detailInfoData: String

    init(nameData: LabelPackComponentData,
         imageData: CustomImageViewComponentData,
         artistNameData: LabelPackComponentData,
         genreData: LabelPackComponentData,
         rateData: LabelPackComponentData,
         priceData: LabelPackComponentData,
         releaseDateData: LabelPackComponentData,
         detailInfoData: String) {
        
        self.nameData = nameData
        self.imageData = imageData
        self.artistNameData = artistNameData
        self.genreData = genreData
        self.rateData = rateData
        self.priceData = priceData
        self.releaseDateData = releaseDateData
        self.detailInfoData = detailInfoData
    }
    
}

