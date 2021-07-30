import UIKit

final class SocialView: BoilerPlateView {
    private struct Constants {
        static let buttonSize: CGFloat = 44.0
    }
    
    override func setup() {
        
        let contentStackView = UIStackView().configure {
            $0.spacing = 10.0
            $0.axis = .vertical
        }
        addSubview(contentStackView)
        contentStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        let controlsStackView = UIStackView().configure {
            $0.spacing = 10.0
            $0.axis = .horizontal
            $0.distribution = .equalSpacing
        }
        contentStackView.addArrangedSubview(controlsStackView)
        
        let buttonsStackView = UIStackView().configure {
            $0.axis = .horizontal
            $0.spacing = 0.0
        }
        controlsStackView.addArrangedSubview(buttonsStackView)
        controlsStackView.addArrangedSubview(UIView())
        
        let likeButton = UIButton(type: .custom).configure {
            $0.setImage(Asset.Images.heart.image, for: .normal)
            $0.tintColor = .black
            $0.contentHorizontalAlignment = .leading
        }
        buttonsStackView.addArrangedSubview(likeButton)
        likeButton.snp.makeConstraints {
            $0.width.height.equalTo(Constants.buttonSize)
        }
        
        let messageButton = UIButton(type: .custom).configure {
            $0.setImage(Asset.Images.speechBubble.image, for: .normal)
            $0.tintColor = .black
            $0.contentHorizontalAlignment = .leading
        }
        buttonsStackView.addArrangedSubview(messageButton)
        messageButton.snp.makeConstraints {
            $0.width.height.equalTo(Constants.buttonSize)
        }
        
        let shareButton = UIButton(type: .custom).configure {
            $0.setImage(Asset.Images.paperPlane.image, for: .normal)
            $0.tintColor = .black
            $0.contentHorizontalAlignment = .leading
        }
        buttonsStackView.addArrangedSubview(shareButton)
        shareButton.snp.makeConstraints {
            $0.width.height.equalTo(Constants.buttonSize)
        }
        
        let likesLabel = UILabel().configure {
            $0.text = "22 Likes"
            $0.font = UIFont.systemFont(ofSize: 14.0, weight: .bold)
            $0.textColor = Asset.Colors.heartRed.color
        }
        contentStackView.addArrangedSubview(likesLabel)
    }
}
