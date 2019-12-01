//
//  TableViewViewModelType.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation


protocol ViewModelType {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CellViewModelType?
    
    func selectRow(indexPath: IndexPath)
    func viewModelForSelectedRow() -> DetailViewModelType?
}
