//
//  News.swift
//  News App
//
//  Created by Aibar Kunanbay on 21.08.2022.
//

import Foundation
struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String?
}
struct NewsEnV : Decodable{
    let status : String
    let totalResults: Int
    let articles : [News]
}
