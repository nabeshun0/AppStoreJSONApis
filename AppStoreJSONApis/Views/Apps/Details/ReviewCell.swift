//
//  ReviewCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/09.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {

    let titleLabel = UILabel(text: "Review Title", font: .boldSystemFont(ofSize: 18))


    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16))

    let starsLabel = UILabel(text: "Stars", font: .systemFont(ofSize: 14))

    let starsStackView: UIStackView = {
        var arrangedSubviews = [UIView]()
        (0..<5).forEach { (_) in
            let imageView = UIImageView(image: #imageLiteral(resourceName: "star"))
            imageView.constrainWidth(constant: 24)
            imageView.constrainHeight(constant: 24)
            arrangedSubviews.append(imageView)
        }

        arrangedSubviews.append(UIView())

        let stavkView = UIStackView(arrangedSubviews: arrangedSubviews)
        return stavkView
    }()

    let bodyLabel = UILabel(text: "Review body\nReview body\nReview body\n", font: .systemFont(ofSize: 18), numberOfLines: 5)


    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = #colorLiteral(red: 0.9450164437, green: 0.9412299991, blue: 0.972433269, alpha: 1)

        layer.cornerRadius = 16
        clipsToBounds = true

        let stackView = VerticalStackView(arrangedSubview: [
            UIStackView(arrangedSubviews: [
            titleLabel, authorLabel
                ],customSpacing: 8),
            starsStackView,
            bodyLabel
        ], spacing: 12)

        titleLabel.setContentCompressionResistancePriority(.init(0), for: .horizontal)
        authorLabel.textAlignment = .right

        addSubview(stackView)
//        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 20, left: 20, bottom: 0, right: 20))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
