//
//  DetailDataFormatter.swift
//  HepsiburadaCaseStudy
//
//  Created by Bengi on 27.10.2021.
//

import Foundation

// MARK: - Detail View Data Formatter -
class DetailDataFormatter: DetailDataFormatterProtocol {
    
    // item detail function 
    func convertItemDetailView(from data: ApiDataResult?) -> DetailViewData {
        
        return DetailViewData(
            nameData: LabelPackComponentData(title: (data?.collectionName ?? data?.trackCensoredName ?? data?.trackName ?? "Did not find any name!"), subtitle: ""),
            imageData: CustomImageViewComponentData(imageUrl: (data?.artworkUrl100!)!),
            artistNameData: LabelPackComponentData(title: "Written by:", subtitle: data?.artistName ?? "Unknown"),
            genreData: LabelPackComponentData(title: "Genres:", subtitle: data?.primaryGenreName ?? "Unknown"),
            rateData: LabelPackComponentData(title: "Rating", subtitle: "\(data?.averageUserRating ?? 0)" ?? "Unknown"),
            priceData: LabelPackComponentData(title: "Price:", subtitle: data?.formattedPrice ?? "$\(data?.collectionPrice ?? 0)" ?? "Free"),
            releaseDateData: LabelPackComponentData(title: "Release Date:", subtitle: data?.releaseDate ?? "Unknown"),
            detailInfoData: data?.shortDescription ?? "Short description not found!")
    }
}
