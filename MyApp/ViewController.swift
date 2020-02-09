//
//  ViewController.swift
//  MyApp
//
//  Created by Doan Vuong on 2/5/20.
//  Copyright © 2020 Doan Vuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel: ViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getData()
        // Do any additional setup after loading the view.
    }
}


