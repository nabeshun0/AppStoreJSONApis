//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/01/27.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .red
        redViewController.tabBarItem.title = "RED"

        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .blue
        blueViewController.tabBarItem.title = "BLUE"

        viewControllers = [
            redViewController,
            blueViewController,
        ]
    }
}
