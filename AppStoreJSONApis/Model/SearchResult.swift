//
//  SearchResult.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/02/09.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String //app icon
    let formattedPrice: String
    let description: String
    let releaseNotes: String
}
