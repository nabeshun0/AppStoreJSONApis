//
//  ReviewRowCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/09.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class ReviewRowCell: UICollectionViewCell {

    let reviewsController = ReviewsController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addSubview(reviewsController.view)
        reviewsController.view.fillSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
