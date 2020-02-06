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
        redViewController.navigationItem.title = "Apps"
        redViewController.view.backgroundColor = .white

        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        redNavController.navigationBar.prefersLargeTitles = true

        let blueViewController = UIViewController()
        blueViewController.navigationItem.title = "Search"
        blueViewController.view.backgroundColor = .white


        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "Search"
        blueNavController.navigationBar.prefersLargeTitles = true
        blueNavController.tabBarItem.image = UIImage(named: "search")

        viewControllers = [
            redNavController,
            blueNavController,
        ]
    }
}
