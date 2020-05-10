//
//  TodayCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/10.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class TodayCell: UICollectionViewCell {

    let imageView = UIImageView(image: #imageLiteral(resourceName: "garden"))

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        layer.cornerRadius = 16

        addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.centerInSuperview(size: .init(width: 250, height: 250))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
