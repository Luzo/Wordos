//
//  Navigation.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

final class Navigation {

    var navigationController: UINavigationController?
    private var visibleViewController: UIViewController? {
        return navigationController?.visibleViewController ?? UIApplication.shared.keyWindow?.rootViewController
    }

    func initialize(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func pushUseCase(useCase: RoutableUseCase, animated: Bool) {
        navigationController?.pushViewController(useCase.viewController, animated: animated)
    }

    func popLastUseCase(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }

    func presentUseCase(useCase: RoutableUseCase, animated: Bool, completion: (() -> Void)? = nil) {
        visibleViewController?.present(useCase.viewController, animated: true, completion: completion)
    }

    func dismissLastUseCase(animated: Bool, completion: (() -> Void)? = nil) {
        visibleViewController?.dismiss(animated: animated, completion: completion)
    }

    func replaceUseCase(useCase: RoutableUseCase) {
        navigationController = useCase.viewController.navigationController
        UIApplication.shared.keyWindow?.rootViewController = nil
        UIApplication.shared.keyWindow?.rootViewController = useCase.viewController
    }
}
