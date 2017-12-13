//
//  BaseViewModel.swift
//  Wordos
//
//  Created by Lubos Lehota on 22/10/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

class BaseViewModel<View> {
    var view: View?

    init(view: View) {
        self.view = view
    }
}

