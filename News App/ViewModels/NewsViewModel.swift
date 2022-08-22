//
//  NewsViewModel.swift
//  News App
//
//  Created by Aibar Kunanbay on 21.08.2022.
//

import Foundation
struct NewsViewModel{
    let news : News
    
    
    var author : String {
        return news.author ?? "Unknown"
    }
    var title  : String {
        return news.title ?? ""
    }
    var desctiption : String {
        return news.description ?? "Unknown"
    }
    var url : String {
        return news.url ?? "Unknown"
    }
    var urlToImage : String {
        return news.urlToImage ?? "https://cdn.vectorstock.com/i/1000x1000/00/63/news-background-breaking-vector-21190063.webp"
    }
}


