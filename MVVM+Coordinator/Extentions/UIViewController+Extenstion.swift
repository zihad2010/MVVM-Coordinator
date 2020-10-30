//
//  UIViewController+Extenstion.swift
//  MVVM+Coordinator
//
//  Created by Steve JobsOne on 10/29/20.
//  Copyright © 2020 Steve JobsOne. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() ->T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}
