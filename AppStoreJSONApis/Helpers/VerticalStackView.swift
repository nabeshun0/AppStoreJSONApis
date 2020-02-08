//
//  VerticalStackView.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/02/08.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class VerticalStackView: UIStackView {

    init(arrangedSubview: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        arrangedSubview.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        self.axis = .vertical
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
