//
//  TodayCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/10.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class TodayCell: UICollectionViewCell {

    var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
            imageView.image = todayItem.image
            descriptionLabel.text = todayItem.description

            backgroundColor = todayItem.backgroundColor
        }
    }

    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 28))

    let imageView = UIImageView(image: #imageLiteral(resourceName: "garden"))

    let descriptionLabel = UILabel(text: "All the tools and apps you nee to intellingently organize your life the right way.", font: .systemFont(ofSize: 16), numberOfLines: 3)

    var topConstraint: NSLayoutConstraint!

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 16

        imageView.contentMode = .scaleAspectFill

        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 240, height: 240))

        let stackView = VerticalStackView(arrangedSubview: [
            categoryLabel, titleLabel, imageContainerView, descriptionLabel
        ], spacing: 8)
        addSubview(stackView)

        stackView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 24, bottom: 24, right: 24))
        self.topConstraint = stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24)
        self.topConstraint.isActive = true

        //        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
