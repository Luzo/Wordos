//
//  ViewController.swift
//  Wordos
//
//  Created by Lubos Lehota on 21/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

final class HomepageViewController: BaseViewController<HomepageViewModelDelegate> {

    @IBAction func dismiss(_ sender: Any) {
        viewModel.dismissTapped()
    }

    @IBAction func nextVC(_ sender: Any) {
        viewModel.routeToNext()
    }

    override func viewDidLoad() {
        self.view.backgroundColor = .blue
    }

    deinit {
        print("deal HPVC: \(self)")
    }
}

