//
//  ApiManagerBuilder.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

// an api builder for api call and lottie call 
class ApiManagerBuilder {
    
    private static let lottieManager = LottieManager()
    private static let listener = ApiCallListenerManager(animationManager: lottieManager)
    private static let manager = APIManager(apiCallListener: listener)
    
    class func build() -> APIManagerInterface {
        return manager
    }
    
}
