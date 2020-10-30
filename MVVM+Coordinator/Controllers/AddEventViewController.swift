//
//  AddEventViewController.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/29/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController {
    
    //MARK: - Info
    var addEventViewModel: AddEventViewModel!
    

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        self.addEventViewModel.viewDidDisappear()
    }
    
    //MARK: - Action Method
    
    

}
