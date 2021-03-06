//
//  EventListCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

final class EvenListCoordinator: Coordinator {
 
    private(set)  var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController: EventListViewController = .instantiate()
        let eventListViewModel = EventListViewModel()
        eventListViewModel.coordinatorDelegate = self
        eventListViewController.eventListViewModel = eventListViewModel
        navigationController.setViewControllers([eventListViewController], animated: true)
    }
    
    func startAddEvent() {
        let addEventCoordinatior = AddEventCoordinator(navigationController: navigationController)
        addEventCoordinatior.parentCoordinatorDelegate = self
        childCoordinators.append(addEventCoordinatior)
        addEventCoordinatior.start()
        
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        if let index = self.childCoordinators.firstIndex(where: { coordinator -> Bool in
            return self.childCoordinators as AnyObject === coordinator as AnyObject
        }){
            self.childCoordinators.remove(at: index)
        }
    }
}
