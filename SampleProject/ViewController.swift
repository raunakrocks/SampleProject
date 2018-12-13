//
//  ViewController.swift
//  SampleProject
//
//  Created by Raunak Talwar on 11/12/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doSomething()
    }

    private func doSomething() {
        let viewModel = ViewModel()
        let view = View(viewModel: viewModel)
        print(view)
    }

}
