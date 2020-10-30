//
//  EventListViewModel.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import Foundation

final class EventListViewModel{
    
    var coordinatorDelegate: EvenListCoordinator?
    
    func tappedAddEvent() {
        self.coordinatorDelegate?.startAddEvent()
    }
}
