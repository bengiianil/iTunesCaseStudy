//
//  DetailViewController.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import UIKit

// MARK: - Detail View Controller -
class DetailViewController: BaseViewController<DetailViewModel> {
    
    // detail view transfer to the view controller with detail data
    private var detailView: DetailView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addMainComponent()
    }
    
    private func addMainComponent() {
        detailView = DetailView()
        detailView.setData(by: viewModel.getDetailViewData())
        detailView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailView)
        
        NSLayoutConstraint.activate([
            detailView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            detailView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            detailView.topAnchor.constraint(equalTo: view.topAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
