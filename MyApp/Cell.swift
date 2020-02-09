//
//  File.swift
//  MyApp
//
//  Created by Doan Vuong on 2/6/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import Foundation
import UIKit

class Cell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    
    func setupUI(user: User) {
        self.title.text = user.title
    }
    
}
