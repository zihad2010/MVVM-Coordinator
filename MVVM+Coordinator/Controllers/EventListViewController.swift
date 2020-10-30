//
//  EventListViewController.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/28/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class EventListViewController: UIViewController {
    
    var eventListViewModel: EventListViewModel!
    
//    static func instantiate() -> EventListViewController {
//        let storyBoard = UIStoryboard(name: "Main", bundle: .main)
//        let controller = storyBoard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
//        return controller
//    }
    // MARK: - view cycle method
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        self.navigationController?.navigationBar.isHidden = true
        self.barButton.backgroundColor = .primary
    }
    
    // MARK: - Info
    @IBOutlet weak var barButton: UIButton!
    
    
    // MARK: - event method
    @IBAction func tappedAddEvent(_ sender: Any) {
        eventListViewModel.tappedAddEvent()
    }
    
    
}
