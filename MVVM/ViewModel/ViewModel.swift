//
//  TableViewViewModel.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation


class ViewModel: ViewModelType {
    
    private var profiles: [Profile] = [
        Profile(name: "Chris", secondName: "Lattner", age: 40),
        Profile(name: "Bjarne", secondName: "Stroustrup", age: 68)
    ]
    private var selectedIndexPath: IndexPath?
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> CellViewModelType? {
        
        if indexPath.row >= profiles.count { return nil }
        
        let profile = profiles[indexPath.row]
        return CellViewModel(profile: profile)
    }
    
    func selectRow(indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        
        guard let indexPath = selectedIndexPath, indexPath.row >= 0 && indexPath.row < profiles.count else {
            return nil
        }
        let profile = profiles[indexPath.row]
        return DetailViewModel(profile: profile)
    }
}
