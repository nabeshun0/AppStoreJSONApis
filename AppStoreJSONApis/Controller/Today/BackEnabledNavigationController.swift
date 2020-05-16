//
//  BackEnabledNavigationController.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/16.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class BackEnabledNavigationController: UINavigationController, UIGestureRecognizerDelegate {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.interactivePopGestureRecognizer?.delegate = self
    }

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.viewControllers.count > 1
    }
}
