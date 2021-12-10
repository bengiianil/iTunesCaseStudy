//
//  MainViewController.swift
//  UIComponents
//
//  Created by Bengi on 5.10.2021.
//

import UIKit

// MARK: - Main View Controller -
class MainViewController: BaseViewController<MainViewModel> {
    
    deinit {
        print("DEINIT: MainViewController")
    }
    
    private var itemCollectionView: ItemCollectionView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addItemCollectionView()
        subscribeViewModelListeners()
    }
    
    func addItemCollectionView() {
        itemCollectionView = ItemCollectionView()
        itemCollectionView.translatesAutoresizingMaskIntoConstraints = false
        itemCollectionView.delegate = viewModel
        view.addSubview(itemCollectionView)
        
        NSLayoutConstraint.activate([
            itemCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            itemCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    private func subscribeViewModelListeners() {
        viewModel.subscribeMainViewState { [weak self] state in
            switch state {
            case .done:
                DispatchQueue.main.async {
                    self?.itemCollectionView.reloadCollectionView()
                }
            case .loading:
                print("Data is loading.")
            case .failure:
                print("Error")
            }
        }
        viewModel.subscribeDetailViewState { [weak self] data in
            self?.fireDetailView(with: data)
        }
    }
    
    private func fireDetailView(with requestData: ApiDataResult?) {
        let viewController = DetailViewBuilder.build(with: requestData)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
