//
//  ViewModel.swift
//  MyApp
//
//  Created by Doan Vuong on 2/9/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import Foundation

class ViewModel {
    var provider: HealthCareServiceProtocol!
    init(provider: HealthCareServiceProtocol) {
        self.provider = provider
    }
    
    func getData() {
        self.provider.requestAriticles { (response, errorMessage) in
            print(response)
            print(errorMessage)
        }
    }
}
