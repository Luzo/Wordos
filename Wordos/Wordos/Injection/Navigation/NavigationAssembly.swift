//
//  NavigationAssembly.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import Swinject

class NavigationAssembly: Assembly {

    func assemble(container: Container) {
        container.register(Navigation.self) { r in
            Navigation()
        }.initCompleted({ (r, n) in
            n.initialize(navigationController: r.resolve(MainNavigationViewController.self)!)
        }).inObjectScope(.container)
    }
}
