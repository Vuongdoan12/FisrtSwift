//
//  Blog.swift
//  MyApp
//
//  Created by Doan Vuong on 2/9/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import Foundation
struct BlogResponse: Codable {
    var blog: [Blog]
}

struct Blog: Codable {
    let title: String
    let url: String
}
