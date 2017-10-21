//
//  RoutableUseCase.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

enum RoutableUseCase {
    case homepage

    var viewController: UIViewController {
        let assembly = MainAssembly.instance

        switch self {
        case .homepage: return assembly.resolve(type: ViewController.self)
        }
    }
}
