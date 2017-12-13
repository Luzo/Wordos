//
//  ViewModelAssembly.swift
//  Wordos
//
//  Created by Lubos Lehota on 11/11/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import Swinject
import SwinjectAutoregistration

class ViewModelAssembly: Assembly {

    func assemble(container: Container) {

        container.autoregister(
            HomepageViewModelDelegate.self,
            initializer: HomepageViewModel.init(navigation:view:)
        )
    }
}
