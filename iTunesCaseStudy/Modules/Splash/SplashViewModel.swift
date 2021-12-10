//
//  SplashViewModel.swift
//  WeatherApplication
//
//  Created by Erkut Bas on 16.10.2021.
//

import Foundation

typealias VoidBlock = () -> Void

// MARK: - Splash View Model -
class SplashViewModel {
    
    private var splashFinalizeListener: VoidBlock?
    
    init(completion: @escaping VoidBlock) {
        self.splashFinalizeListener = completion
    }
    
    // Fire splash view
    func fireApplicationInitiateProcess() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.splashFinalizeListener?()
        }
        
    }
    
}
