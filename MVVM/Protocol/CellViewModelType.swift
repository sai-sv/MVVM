//
//  TableViewCellViewModelType.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation

protocol CellViewModelType: class {
 
    var name: String { get }
    var age: String { get }
}
