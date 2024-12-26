import UIKit

class ProfileHeaderView: UIView {
    private let imageView = UIImageView()
    private let nameLabel = UILabel()
    private let birthdayLabel = UILabel()
    private let button = UIButton(type: .system)
    private let profile = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    private func setupView() {
        imageView.image = UIImage(named: "Max")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 3.0
        addSubview(imageView)
        
        nameLabel.text = "Hipster Cat"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.textColor = .black
        addSubview(nameLabel)
        
        profile.text = "Profile"
        profile.font = UIFont.boldSystemFont(ofSize: 24)
        profile.textAlignment = .center
        addSubview(profile)
        
        birthdayLabel.text = "Waiting for something..."
        birthdayLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        birthdayLabel.textColor = .gray
        addSubview(birthdayLabel)
        
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        addSubview(button)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let padding: CGFloat = 16
        let imageSize: CGFloat = 100
        imageView.frame = CGRect(x: 16, y: 90, width: imageSize, height: imageSize)
        
        let labelWidth = profile.intrinsicContentSize.width
        let screenWidth = bounds.width
        profile.frame = CGRect(x: (screenWidth - labelWidth) / 2, y: 20, width: 100, height: 100)
        nameLabel.frame = CGRect(x: 170, y: 99, width: bounds.width - 2 * padding, height: 30)
        birthdayLabel.frame = CGRect(x: 170, y: 160, width: bounds.width - 2 * padding, height: 20)
        button.frame = CGRect(x: padding, y: 204, width: bounds.width - 2 * padding, height: 50)
    }
    
    @objc private func buttonPressed(_ sender: UIButton) {
        if let buttonText = sender.title(for: .normal) {
            print(buttonText)
        } else {
            print("Нет текса")
        }
    }
}
