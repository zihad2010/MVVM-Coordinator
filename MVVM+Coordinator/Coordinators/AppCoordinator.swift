//
//  AppCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/27/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinator: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinator: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let eventListCoordinator = EvenListCoordinator(navigationController: navigationController)
        childCoordinator.append(eventListCoordinator)
        
        eventListCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
