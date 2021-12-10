//
//  DetailView.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import UIKit

// MARK: - Detail View Properties -
class DetailView: GenericBaseView<DetailViewData> {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.backgroundColor = AppThemeColors.appGray.value
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [name, image, artistName, genre, rate, price, releaseDate, detailInfo])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        view.alignment = .center
        view.distribution = .fill
        view.axis = .vertical
        view.spacing = 8
        return view
    }()

    private lazy var name: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.titleLabel.font = MainFont.bold(20).value
        view.titleLabel.textAlignment = .center
        return view
    }()
    
    private lazy var image: CustomImageViewComponentContainer = {
        let view = CustomImageViewComponentContainer()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.layer.cornerRadius = 4
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 1
        return view
    }()
    
    private lazy var artistName: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var genre: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rate: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var price: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var releaseDate: LabelPackComponent = {
        let view = LabelPackComponent()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var detailInfo: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 0
        view.contentMode = .center
        view.textAlignment = .center
        view.lineBreakMode = .byWordWrapping
        return view
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addComponents()
    }
    
    private func addComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 120),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
        ])
    }

    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        DispatchQueue.main.async {
            UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve) {
                self.name.setData(by: data.nameData)
                self.image.setData(by: data.imageData)
                self.artistName.setData(by: data.artistNameData)
                self.genre.setData(by: data.genreData)
                self.rate.setData(by: data.rateData)
                self.price.setData(by: data.priceData)
                self.releaseDate.setData(by: data.releaseDateData)
                self.detailInfo.text = data.detailInfoData
            }
            
        }
    }
}

