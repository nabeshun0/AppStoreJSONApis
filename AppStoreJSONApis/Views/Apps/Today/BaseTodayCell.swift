//
//  BaseTodayCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/15.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class BaseTodayCell: UICollectionViewCell {

    var todayItem: TodayItem!


    override var isHighlighted: Bool {
        didSet {
            var transform: CGAffineTransform = .identity
            if isHighlighted {
                transform = .init(scaleX: 0.9, y: 0.9)
            }

            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {

                self.transform = transform

            })
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundView = UIView()
        addSubview(self.backgroundView!)
        self.backgroundView?.fillSuperview()
        self.backgroundView?.backgroundColor = .white
        self.backgroundView?.layer.cornerRadius = 16

        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        layer.shadowOffset = .init(width: 0, height: 10)
        layer.shouldRasterize = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
