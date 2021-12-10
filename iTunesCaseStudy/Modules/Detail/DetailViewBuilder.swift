//
//  DetailViewBuilder.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import UIKit

// MARK: - Detail View Build Function -
class DetailViewBuilder {
    
    class func build(with data: ApiDataResult?) -> UIViewController {
        
        let formetter = DetailDataFormatter()
        let viewModel = DetailViewModel(data: data, detailFormatter: formetter)
        let viewController = DetailViewController(viewModel: viewModel)
        return viewController
    }
}

