//
//  NewsListViewModel.swift
//  News App
//
//  Created by Aibar Kunanbay on 21.08.2022.
//

import Foundation
class NewsListViewModel{
    var newsVM = [NewsViewModel]()
    
    let reuseID = "news"
    func getNews(comletion: @escaping ([NewsViewModel]) -> Void){
        NetWManager.shared.getNews { (news) in
            guard let news  = news else {return }
            let newsVm = news.map(NewsViewModel.init)
            DispatchQueue.main.async {
                self.newsVM = newsVm
                comletion(newsVm)
            }
            
        }
    }
}

