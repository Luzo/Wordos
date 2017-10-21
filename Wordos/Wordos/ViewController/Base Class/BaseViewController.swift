//
//  BaseViewController.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var navigation: Navigation!

    func initialize(navigation: Navigation) {
        self.navigation = navigation
    }
}

