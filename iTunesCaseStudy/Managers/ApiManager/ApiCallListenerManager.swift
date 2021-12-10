//
//  ApiCallListenerManager.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 24.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

// MARK: - Manager for Animation Control -
class ApiCallListenerManager: ApiCallListener {
    
    private let animationManager: LottieManagerProtocol
    
    init(animationManager: LottieManagerProtocol) {
        self.animationManager = animationManager
    }
    
    func onPreExecute() {
        animationManager.onPreExecute()
    }
    
    func onPostExecute() {
        animationManager.onPostExecute()
    }
    
}
