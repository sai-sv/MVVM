//
//  TableViewCellViewModel.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import Foundation

class CellViewModel: CellViewModelType {
    
    private var profile: Profile!
    
    init(profile: Profile) {
        self.profile = profile
    }
    
    var name: String {
        return profile.name + " " + profile.secondName
    }

    var age: String {
        return String(describing: profile.age)
    }
}
