//
//  View.swift
//  ULD
//
//  Created by Nikita on 30.07.2021.
//

import UIKit
import SnapKit

final class ContentView: BoilerPlateView {
    private let postImageView = UIImageView()
    
    override func setup() {
        let scrollView = UIScrollView().configure {
            $0.showsVerticalScrollIndicator = false
        }
        addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.edges.equalTo(safeAreaLayoutGuide)
        }
        
        let contentView = UIView()
        scrollView.addSubview(contentView)
        
        contentView.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.leading.top.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().priority(.low)
        }
        
        let headerView = HeaderView()
        contentView.addSubview(headerView)
        headerView.snp.makeConstraints {
            $0.top.equalTo(10.0)
            $0.leading.equalTo(15.0)
            $0.trailing.equalTo(-15.0)
        }
        
        postImageView.configure {
            $0.contentMode = .scaleAspectFill
            $0.clipsToBounds = true
            $0.image = Asset.Images.postImage.image
        }
        contentView.addSubview(postImageView)
        postImageView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(10.0)
            $0.width.equalToSuperview()
            $0.height.equalTo(contentView.snp.width)
        }
        
        let socialView = SocialView()
        contentView.addSubview(socialView)
        socialView.snp.makeConstraints {
            $0.top.equalTo(postImageView.snp.bottom).offset(10.0)
            $0.leading.equalTo(15.0)
            $0.trailing.equalTo(-15.0)
        }
        
        let commentsView = CommentsView()
        contentView.addSubview(commentsView)
        commentsView.snp.makeConstraints {
            $0.top.equalTo(socialView.snp.bottom).offset(10.0)
            $0.leading.equalTo(15.0)
            $0.trailing.equalTo(-15.0)
            $0.bottom.equalToSuperview()
        }
    }
}
