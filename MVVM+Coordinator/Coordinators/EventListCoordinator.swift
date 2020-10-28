//
//  EventListCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

final class EvenListCoordinator: Coordinator {
 
    private(set)  var childCoordinator: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        let eventListViewModel = EventListViewModel()
        eventListViewController.eventListViewModel = eventListViewModel
        navigationController.setViewControllers([eventListViewController], animated: true)
    }
    
    func startAddEvent() {
        let addEventCoordinatior = AddEventCoordinator(navigationController: navigationController)
        childCoordinator.append(addEventCoordinatior)
        addEventCoordinatior.start()
        
    }
}
