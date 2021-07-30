import UIKit

final class CommentsView: BoilerPlateView {
    override func setup() {
        let stackView = UIStackView().configure {
            $0.axis = .vertical
            $0.spacing = 5.0
        }
        addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        add(username: "ivan_morillo", comment: "Hi!", to: stackView)
        
        add(username: "netherworldpost",
            comment: "Love these! I am just beginning to get creative in my minimalist BuJo - whole new world and great stress reliever.",
            to: stackView)
        
        add(username: "netherworldpost",
            comment: "We asked you to share some of your Creativity spreads with the hashtag #BuJoCreativity and you delivered. Here are some of our favorite pages from our very own BuJo community.",
            to: stackView)
        
        add(username: "bulletjournal",
            comment: "“You could look at your notebook as the evidence of your imperfections, or you could look at it as a testament to your courage. These crooked lines and rough letters paint a picture of someone striving to learn and make a positive change in their life. It may not be perfect, but it’s unquestionably beautiful.” - @rydercarroll from his book, The Bullet Journal Method.",
            to: stackView)
        
        add(username: "netherworldpost",
            comment: "Love these! I am just beginning to get creative in my minimalist BuJo - whole new world and great stress reliever.",
            to: stackView)
        
        add(username: "netherworldpost",
            comment: "Love these! I am just beginning to get creative in my minimalist BuJo - whole new world and great stress reliever.",
            to: stackView)
    }
    
    private func add(username: String, comment: String, to stackView: UIStackView) {
        let usernameAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14.0, weight: .bold)
        ]
        
        let commentAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14.0, weight: .regular)
        ]
        
        let usernameText = NSMutableAttributedString(string: username + " ",
                                                     attributes: usernameAttributes)
        
        let commentText = NSAttributedString(string: comment,
                                             attributes: commentAttributes)
        
        usernameText.append(commentText)
        
        let label = UILabel().configure {
            $0.attributedText = usernameText
            $0.numberOfLines = 3
        }
        stackView.addArrangedSubview(label)
    }
}
