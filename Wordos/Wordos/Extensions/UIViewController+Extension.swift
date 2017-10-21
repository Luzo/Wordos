//
//  UIViewController.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

extension UIViewController {
    static var name: String {
        return String(describing: self)
    }
}
