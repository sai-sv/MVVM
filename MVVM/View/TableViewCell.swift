//
//  TableViewCell.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    
    weak var viewModel: CellViewModelType? {
        willSet {
            guard let viewModel = newValue else { return }
            self.name.text = viewModel.name
            self.age.text =  viewModel.age
        }
    }
}
