//
//  DetailViewModelType.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation

protocol DetailViewModelType: class {
    
    var detail: String { get }
    
    var description: Box<String?> { get }
}
