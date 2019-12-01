//
//  DetailViewController.swift
//  MVVM
//
//  Created by Admin on 01.12.2019.
//  Copyright © 2019 sergei. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelType?
    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.detailLabel.text = viewModel.detail
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*viewModel?.description.bind(listner: { [unowned self] (description) in
            guard let description = description else { return }
            self.detailLabel.text = description
        })*/
        
        viewModel?.description.bind() { [unowned self] in
            guard let description = $0 else { return }
            self.detailLabel.text = description
        }
        
        updateValue(delay: 5) { [unowned self] in
            self.viewModel?.description.value = "Boxing in action!"
        }
    }
    
    private func updateValue(delay: Double, closure: @escaping ()->()) {
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
