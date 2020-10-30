//
//  AddEventViewModel.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/29/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        self.coordinator?.didFinishAddEvent()
    }
}

