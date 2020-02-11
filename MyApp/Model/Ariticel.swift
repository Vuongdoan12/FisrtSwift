//
//  Ariticel.swift
//  MyApp
//
//  Created by Doan Vuong on 2/9/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import Foundation
struct Response: Codable {
    let articles: [AriticelResponse]
    struct AriticelResponse: Codable {
        let path: String?
        let url: String?
        let content: String?
    //    var relative_path: String
    //    var id: String
    //    var collection: String
    //    var excerpt: String
    //    var draft: String
    //    var categories: [String]
    //    var experience: String
    //    var type: String
    //    var published: String
    //    var title: String
    //    var meta-title: String
    //    var title-short: String
    //    var bite: String
    //    var lang: String
    //    var layout: String
    //    var featured: String
    //    var page_name: String
    //    var page_type: String
    //    var page_topic: String
    //    var page_lifecycle: String
    //    var page_audience: String
    //    var page_category: String
    //    var date: String
    //    var slug: String
    //    var ext: String
    //    var tags: [String]
    }
}
