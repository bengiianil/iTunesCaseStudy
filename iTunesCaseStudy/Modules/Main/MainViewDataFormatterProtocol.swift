//
//  MainViewDataFormatterProtocol.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 24.10.2021.
//

import Foundation

// MARK: - Main View Protocol -
protocol MainViewDataFormatterProtocol {
    var paginationData: PaginationInfo { get set }
    func getItem(at index: Int) -> GenericDataProtocol?
    func getItemId(at index: Int) -> Int
    func getNumberOfSection() -> Int
    func getNumberOfItem(in section: Int) -> Int
    func getCount() -> Int
    func setData(with response: ITunesSearchResponse)
    func clearData()
    func getItemData(at index: Int) -> ApiDataResult
}
