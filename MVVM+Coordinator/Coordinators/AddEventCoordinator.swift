//
//  AddEventCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    
    var parentCoordinatorDelegate: EvenListCoordinator?
    
    private let navigationController: UINavigationController
    private(set)  var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - create add event view controller, create add view model, present next view controller
    func start() {
        print("tappedAddEvent")
        let addEventViewController: AddEventViewController = .instantiate()
        addEventViewController.view.backgroundColor = .primary
        let addEventViewModel = AddEventViewModel()
        addEventViewModel.coordinator = self
        addEventViewController.addEventViewModel = addEventViewModel
        navigationController.present(addEventViewController, animated: true, completion: nil)
       // navigationController.setViewControllers([addEventViewController], animated: true)
        
    }
    
    func didFinishAddEvent() {
        self.parentCoordinatorDelegate?.childDidFinish(self)
    }
}
