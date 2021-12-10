//
//  MainViewDataFormatter.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation
import UIKit

// MARK: - Main View Data Formatter -
class MainViewDataFormatter: MainViewDataFormatterProtocol {

    private var data: ITunesSearchResponse?
    private var list: [ApiDataResult] = [ApiDataResult]()
    private var requestData: iTunesSearchRequest?
    var paginationData: PaginationInfo = PaginationInfo()

    func getItem(at index: Int) -> GenericDataProtocol? {
        return ContentDisplayerViewData(
            imageComponentData: CustomImageViewComponentData(imageUrl: list[index].artworkUrl100!),
            nameLabelData: list[index].collectionName ??  list[index].trackCensoredName ?? list[index].trackName ?? "" )
    }
    
    func getItemId(at index: Int) -> Int {
        return list[index].trackId ?? 0
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumberOfItem(in section: Int) -> Int {
        let count = list.count
        return (paginationData.limit <= paginationData.resultCount) ? count+1 : count
    }
    
    func getCount() -> Int {
        return list.count
    }
    
    func setData(with response: ITunesSearchResponse) {
        self.data = response
        self.paginationData.resultCount = response.results.count
        self.list.append(contentsOf: response.results)
    }
    
    func clearData() {
        list.removeAll()
    }
    
    func getItemData(at index: Int) -> ApiDataResult {
        return list[index]
    }
}
