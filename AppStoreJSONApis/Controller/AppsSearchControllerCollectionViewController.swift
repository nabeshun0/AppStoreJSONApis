//
//  AppsSearchControllerCollectionViewController.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/02/07.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class AppSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .red
    }

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
