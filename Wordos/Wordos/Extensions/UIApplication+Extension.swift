//
//  UIApplication+Extension.swift
//  Wordos
//
//  Created by Lubos Lehota on 11/11/2017.
//  Copyright © 2017 LubosLehota. All rights reserved.
//

import UIKit

extension UIApplication {
    class func topViewController(
        base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
    ) -> UIViewController? {

        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}
