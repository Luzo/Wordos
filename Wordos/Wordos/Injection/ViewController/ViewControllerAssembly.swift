//
//  ViewControllerAssembly.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import SwinjectAutoregistration

class ViewControllerAssembly: Assembly {

    private static let storyboardName: String = {
        let iphoneStoryboardName = "Main-iPhone"
        let ipadStoryboardName = "Main-iPad"

        switch UIDevice.current.userInterfaceIdiom {
            case .phone: return iphoneStoryboardName
            case .pad: return ipadStoryboardName
            default: return ipadStoryboardName
        }
    }()

    private func storyboard(container: Container) -> UIStoryboard {
        return SwinjectStoryboard.create(name: ViewControllerAssembly.storyboardName, bundle: nil, container: container)
    }

    func assemble(container: Container) {
        Container.loggingFunction = nil

        container.storyboardInitCompleted(HomepageViewController.self) { r, vc in
            vc.initialize(
                viewModel: r ~> (HomepageViewModelDelegate.self, argument: 3)
            )
        }

        container.register(MainNavigationViewController.self) { _ in
            return self.storyboard(container: container).instantiateViewController(
                withIdentifier: MainNavigationViewController.name
            ) as! MainNavigationViewController
        }

        container.register(HomepageViewController.self) { _ in
            return self.storyboard(container: container).instantiateViewController(
                withIdentifier: HomepageViewController.name
            ) as! HomepageViewController
        }
    }
}
