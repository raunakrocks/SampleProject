//
//  ViewModel.swift
//  SampleProject
//
//  Created by Raunak Talwar on 11/12/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import Foundation

protocol Delegate: class {
    func update()
}

class ViewModel {
    weak var delegate: Delegate?
    init() {
        
    }
}
