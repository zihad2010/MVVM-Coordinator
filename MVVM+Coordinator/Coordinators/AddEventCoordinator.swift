//
//  AddEventCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    private(set)  var childCoordinator: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - create add event view controller, create add view model, present next view controller
    func start() {
        
    }
}
