//
//  HomepageViewModel.swift
//  Wordos
//
//  Created by Lubos Lehota on 22/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

protocol HomepageViewModelDelegate {
    func routeToNext()
    func dismissTapped()
}

final class HomepageViewModel: BaseViewModel<HomepageViewController>, HomepageViewModelDelegate {

    fileprivate let navigation: Navigation
    fileprivate let timestamp: Date

    init(navigation: Navigation, view: HomepageViewController) {
        self.navigation = navigation
        timestamp = Date()

        super.init(view: view)
    }

    func routeToNext() {
        navigation.presentUseCase(useCase: .homepage, animated: true)
    }

    func dismissTapped() {
        navigation.dismissLastUseCase(animated: true)
    }

    deinit {
        print("deal HPVM: \(self)")
    }
}
