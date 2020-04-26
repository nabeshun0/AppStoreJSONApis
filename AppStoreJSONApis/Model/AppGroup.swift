//
//  AppGroup.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/04/26.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import Foundation

struct AppGroup: Decodable {

    let feed: Feed

}

struct Feed: Decodable {
    let title : String
    let results: [FeesResult]
}

struct FeesResult: Decodable {
    let name, artistName, artworkUrl100: String
}
