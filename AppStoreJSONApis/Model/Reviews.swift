//
//  Reviews.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/10.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import Foundation

struct Reviews: Decodable {
    let feed: ReviewFeed
}

struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let author: Author
    let title: Label
    let content: Label
}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}
