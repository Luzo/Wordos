//
//  Assembly.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import Swinject

final class MainAssembly {
    static let instance: MainAssembly = MainAssembly()
    let container: Container = Container()
    var assemblies: [Assembly] {
        return [
            ViewControllerAssembly(),
            NavigationAssembly()
        ]
    }

    private init() {
        registerScope()
    }
}

extension MainAssembly {
    func registerScope() {
        assemblies.forEach {
            $0.assemble(container: container)
        }
    }

    func resolve<T>(type: T.Type) -> T {
        guard let dependency = container.resolve(type) else {
            fatalError("Dependency \(String(describing: type)) not registered in MainAssembly")
        }

        return dependency
    }
}
