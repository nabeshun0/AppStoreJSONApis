//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/04/05.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
