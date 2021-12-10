//
//  ContentDisplayerViewData.swift
//  MarvelCodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation

class ContentDisplayerViewData: GenericDataProtocol {
    
    private(set) var nameLabelData: String
    private(set) var imageComponentData: CustomImageViewComponentData

    init(imageComponentData: CustomImageViewComponentData, nameLabelData: String) {
        self.nameLabelData = nameLabelData
        self.imageComponentData = imageComponentData
    }
    
}

    
