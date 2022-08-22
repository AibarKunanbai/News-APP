//
//  HeaderView.swift
//  News App
//
//  Created by Aibar Kunanbay on 21.08.2022.
//

import Foundation
import UIKit
final class HeaderView: UIView {
    private var fontsize: CGFloat
    
    private lazy  var  headingLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "News"
        v.font = UIFont.boldSystemFont(ofSize: fontsize)
        return v
    }()
    private lazy var headerCircleImage : UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.contentMode = .scaleAspectFit
        let config = UIImage.SymbolConfiguration(pointSize: fontsize, weight: .bold)
        v.image = UIImage(systemName: "circle.inset.filled", withConfiguration: config)?.withRenderingMode(.alwaysOriginal)
        return v
    }()
    
    private lazy var plusImage: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: fontsize, weight: .bold)
        v.image = UIImage(systemName: "circle.inset.filled", withConfiguration: config)?.withRenderingMode(.alwaysOriginal)
        return v
        
    }()
    
    private lazy var subheadliveLabel: UILabel = {
        let v  = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.font = v.font.withSize(fontsize)
        v.text = "Top Headlines"
        v.textColor = .gray
        return v
        
    }()
    
    
    private lazy var headerStackView: UIStackView = {
        let v = UIStackView(arrangedSubviews: [headerCircleImage,headingLabel,plusImage])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.axis = .horizontal
        return v
    }()
    
    
    
    init(fontsize: CGFloat){
        self.fontsize = fontsize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupView(){
        addSubview(headerStackView)
        addSubview(subheadliveLabel)
        setupConstraints()
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerStackView.topAnchor.constraint(equalTo: topAnchor)
            
        ])
    
        NSLayoutConstraint.activate([
            subheadliveLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            subheadliveLabel.topAnchor.constraint(equalTo:headerStackView.bottomAnchor, constant: 8),
            subheadliveLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
    }
    
    
}

