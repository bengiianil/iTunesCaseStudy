//
//  DetailViewModel.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

typealias DetailViewDataBlock = (DetailViewData) -> Void

// MARK: - Detail View Model -
class DetailViewModel {
    
    // data get via API response
    private let data: ApiDataResult?
    private var detailFormatter: DetailDataFormatterProtocol
    private var detailViewStates: DetailViewDataBlock?

    init(data: ApiDataResult?, detailFormatter: DetailDataFormatterProtocol) {
        self.data = data
        self.detailFormatter = detailFormatter
    }
    
    func getDetailViewData() -> DetailViewData{
        return detailFormatter.convertItemDetailView(from: data)
    }
}
