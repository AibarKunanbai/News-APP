//
//  NewsTableViewCell.swift
//  News App
//
//  Created by Aibar Kunanbay on 21.08.2022.
//

import Foundation
import UIKit
final class NewsTableViewCell: UITableViewCell {
    var newsVm: NewsViewModel? {
        didSet{
            if let newsVm = newsVm {
                titleLabel.text = newsVm.title
                NetWManager.shared.getImage(urlString: newsVm.urlToImage) {(data) in
                    guard let data = data else {return }
                    DispatchQueue.main.async {
                        self.newsImage.image = UIImage(data: data)
                    }
                    
                }
                
            }
        }
    }
    var newsImageData: Data? {
        didSet{
            if let data = newsImageData{
                newsImage.image=UIImage(data: data)

                
            }
        }
    }
    
    private lazy var newsImage: ShadowImageView = {
        let v = ShadowImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    private lazy var titleLabel : UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.numberOfLines = 0
        return v

    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier )
        selectionStyle = .none
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        addSubview(titleLabel)
        addSubview(newsImage)
        setupConstraints()
    }
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            newsImage.leadingAnchor.constraint(equalTo: leadingAnchor ),
            newsImage.trailingAnchor.constraint(equalTo: trailingAnchor ),
            newsImage.topAnchor.constraint(equalTo: topAnchor),
            newsImage.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -16),
            titleLabel.topAnchor.constraint(equalTo: newsImage.bottomAnchor,constant: 8),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -16)
        ])
        
    }
}
