//
//  MainViewModel.swift
//  UIComponents
//
//  Created by Bengi on 5.10.2021.
//

import Foundation
import UIKit
import DefaultNetworkOperationPackage

typealias DetailViewRequestBlock = (ApiDataResult?) -> Void

// MARK: - Main View Model -
class MainViewModel {
    
    deinit {
        print("DEINIT: MainViewModel")
    }
    
    private var requestData: iTunesSearchRequest?
    private var mainFormatter: MainViewDataFormatterProtocol
    private var mainViewStates: MainViewStatesBlock?
    private var detailViewRequest: DetailViewRequestBlock?
    
    private var searchTerm: String?
    private var entity: String?
    
    init(formatter: MainViewDataFormatterProtocol) {
        self.mainFormatter = formatter
    }
    
    func subscribeMainViewState(completion: @escaping MainViewStatesBlock) {
        mainViewStates = completion
    }
    
    func subscribeDetailViewState(completion: @escaping DetailViewRequestBlock) {
        detailViewRequest = completion
    }
    
    // API Request informations according to the entered term
    func getITunesSearchRequest() -> iTunesSearchRequest {
        return iTunesSearchRequest( term: searchTerm,
                                    offset: requestData?.offset ?? 0,
                                    limit: requestData?.limit ?? 20)
    }
    
    // API Request informations according to the segmented controls
    func getITunesSpecificRequest() -> iTunesSearchRequest {
        return iTunesSearchRequest( term: searchTerm ?? "all",
                                    entity: entity,
                                    offset: requestData?.offset ?? 0,
                                    limit: requestData?.limit ?? 1000)
    }
    
    // API Requests according to term and entity
    func getData() {
        mainViewStates?(.loading)
        do {
            guard let urlRequest = try? iTunesApiServiceProvider(request: getITunesSearchRequest()).returnUrlRequest() else { return }
            fireApiCall(with: urlRequest, with: dataListener)
        }
    }
    
    func getDataSegmentedControl() {
        mainViewStates?(.loading)
       
            guard let urlRequest = try? iTunesApiServiceProvider(request: getITunesSpecificRequest()).returnUrlRequest() else { return }
            fireApiCall(with: urlRequest, with: dataListener)
        
    }
        
    // API Call
    private func fireApiCall(with request: URLRequest, with completion: @escaping (Result<ITunesSearchResponse, ErrorResponse>) -> Void) {
        ApiManagerBuilder.build().executeRequest(urlRequest: request, completion: completion)
    }
   
    // MARK: - CallBack Listener -
    private func apiCallHandler(from response: ITunesSearchResponse) {
        mainFormatter.setData(with: response)
        mainViewStates?(.done)
    }
    
    private lazy var dataListener: (Result< ITunesSearchResponse, ErrorResponse>) -> Void = { [weak self] result in
        
        // after data fetchs, we have to do fetching = false
        self?.mainFormatter.paginationData.fetching = false
        
        switch result {
        case .failure(let error):
            print("error : \(error)")
        case .success(let response):
            self?.apiCallHandler(from: response)
        }
    }
}

// MARK: - ItemProviderProtocol -
extension MainViewModel: ItemProviderProtocol {
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumberOfItem(in section: Int) -> Int {
        return mainFormatter.getNumberOfItem(in: section)
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        return mainFormatter.getItem(at: index)
    }
    
    func isLoadingCell(for index: Int) -> Bool {
        return index >= mainFormatter.getCount()
    }
    
    func getMoreData() {
        guard mainFormatter.paginationData.checkLoadingMore() else { return }
        mainFormatter.paginationData.nextOffset()
        getData()
    }
    
    func selectedItem(by data: ApiDataResult?) {
        detailViewRequest?(data)
    }
    
    func getDetailData(at index: Int) -> ApiDataResult? {
        return mainFormatter.getItemData(at: index)
    }
    
    func getChangingTerm(with term: String) {
        print(term)
        self.searchTerm = term
        mainFormatter.clearData()
        getData()
    }
    
    func getSegmentedControlData(with entity: String) {
        self.entity = entity
        mainFormatter.clearData()
        getDataSegmentedControl()
    }
}

