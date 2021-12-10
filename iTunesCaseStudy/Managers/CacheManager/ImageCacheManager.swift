 //
//  ImageCacheManager.swift
//  MarvelCodeCase
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation
import UIKit

// Cache images came from the API
class ImageCacheManager {
    
    private static let imageCache = NSCache<NSString, UIImage>()
    
    class func setImagesToCache(object: UIImage, key: String) {
        imageCache.setObject(object, forKey: NSString(string: key))
    }
    
    class func returnImagesFromCache(key: String) -> UIImage? {
        return imageCache.object(forKey: NSString(string: key))
    }
    
}
