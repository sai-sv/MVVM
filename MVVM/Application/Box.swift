//
//  Box.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation

class Box<T> {
    
    typealias Listner = (T) -> ()
    
    private var listner: Listner?
    
    var value: T {
        didSet {
            listner?(value)
        }
    }
    
    init(value: T) {
        self.value = value
    }
    
    public func bind(listner: @escaping Listner) {
        self.listner = listner
        listner(value)
    }
}
