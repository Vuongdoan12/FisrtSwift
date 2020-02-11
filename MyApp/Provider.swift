//
//  Provider.swift
//  MyApp
//
//  Created by Doan Vuong on 2/9/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import HandyJSON

protocol HealthCareServiceProtocol {
    func requestAriticles(completion: @escaping ((Response, String?) -> Void))
}

class HealthCareService: HealthCareServiceProtocol {
    let provider: MoyaProvider<HealthCareTarget>
    let disposeBag = DisposeBag()
    public init(provider: MoyaProvider<HealthCareTarget>) {
        self.provider = provider

    }

    public func requestAriticles(completion: @escaping ((Response, String?) -> Void)) {
        self.provider
            .rx
            .request(.getBlogs)
            .subscribe(onSuccess: { [weak self] response in
                let decoder = JSONDecoder()
                do {
                    let model = try decoder.decode([BlogResponse].self, from:response.data)
                } catch let error {
                    print(error)
                }
            }) { (error) in
            
        }.disposed(by: disposeBag)
    }
}

class ProcService: HealthCareServiceProtocol {
    func requestAriticles(completion: @escaping ((Response, String?) -> Void)) {
        
    }
}
