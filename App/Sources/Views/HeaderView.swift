//
//  HeaderView.swift
//  ULD
//
//  Created by Nikita on 30.07.2021.
//

import UIKit
import SnapKit

final class HeaderView: BoilerPlateView {
    private struct Constants {
        static let avatarSize: CGFloat = 50.0
    }
    
    private let avatarImageView = UIImageView()
    private let usernameLabel = UILabel()
    private let locationLabel = UILabel()
    
    override func setup() {
        let contentStackView = UIStackView().configure {
            $0.axis = .horizontal
            $0.spacing = 10.0
            $0.alignment = .center
        }
        addSubview(contentStackView)
        contentStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        let avatarView = UIView().configure {
            $0.layer.borderWidth = 3.0
            $0.layer.cornerRadius = Constants.avatarSize / 2.0
            $0.layer.borderColor = Asset.Colors.avatarBorder.color.cgColor
        }
        contentStackView.addArrangedSubview(avatarView)
        avatarView.snp.makeConstraints {
            $0.width.height.equalTo(Constants.avatarSize)
        }
        
        avatarImageView.configure {
            $0.image = Asset.Images.userAvatar.image
            $0.clipsToBounds = true
            $0.layer.cornerRadius = (Constants.avatarSize - 10.0) / 2.0
        }
        avatarView.addSubview(avatarImageView)
        avatarImageView.snp.makeConstraints {
            $0.edges.equalTo(UIEdgeInsets(top: 5.0, left: 5.0, bottom: 5.0, right: 5.0))
        }
        
        let labelsStack = UIStackView(arrangedSubviews: [usernameLabel,
                                                         locationLabel])
            .configure {
                $0.axis = .vertical
                $0.spacing = 3.0
                $0.alignment = .leading
            }
        contentStackView.addArrangedSubview(labelsStack)
        
        usernameLabel.configure {
            $0.text = "marinadillaco"
            $0.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
        }
        
        locationLabel.configure {
            $0.text = "Buenos Aires"
            $0.textColor = UIColor.black.withAlphaComponent(0.8)
            $0.font = UIFont.systemFont(ofSize: 10.0, weight: .regular)
        }
    }
}
