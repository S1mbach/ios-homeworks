import UIKit

class ProfileHeaderView: UIView {
    private let avatarImageView = UIImageView()
    private let fullNameLabel = UILabel()
    private let statusLabel = UILabel()
    private let statusTextField = UIButton(type: .system)
    private let setStatusButton = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        avatarImageView.image = UIImage(named: "Max")
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderWidth = 3.0
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(avatarImageView)
        
        fullNameLabel.text = "Hipster Cat"
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        fullNameLabel.textColor = .black
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(fullNameLabel)
        
        setStatusButton.text = "Profile"
        setStatusButton.font = UIFont.boldSystemFont(ofSize: 24)
        setStatusButton.textAlignment = .center
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(setStatusButton)
        
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(statusLabel)
        
        statusTextField.setTitle("Show status", for: .normal)
        statusTextField.setTitleColor(.white, for: .normal)
        statusTextField.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        statusTextField.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusTextField.layer.shadowRadius = 4
        statusTextField.layer.shadowColor = UIColor.black.cgColor
        statusTextField.layer.shadowOpacity = 0.7
        statusTextField.backgroundColor = .systemBlue
        statusTextField.layer.cornerRadius = 4
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        addSubview(statusTextField)
    }
    
    private func setupConstraints() {
        let padding: CGFloat = 16
        let imageSize: CGFloat = 100
        
        NSLayoutConstraint.activate([
            
            setStatusButton.centerXAnchor.constraint(equalTo: centerXAnchor), 
            setStatusButton.topAnchor.constraint(equalTo: topAnchor),
                        
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            avatarImageView.topAnchor.constraint(equalTo: setStatusButton.bottomAnchor, constant: 10),
            avatarImageView.widthAnchor.constraint(equalToConstant: imageSize),
            avatarImageView.heightAnchor.constraint(equalToConstant: imageSize),
                        
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: padding),
            fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: 9),
            fullNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
                        
            statusLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 31),
            statusLabel.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
                        
            statusTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            statusTextField.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 14),
            statusTextField.heightAnchor.constraint(equalToConstant: 50)
                    ])
    }
    
    @objc private func buttonPressed(_ sender: UIButton) {
        if let buttonText = sender.title(for: .normal) {
            print(buttonText)
        } else {
            print("Нет текста")
        }
    }
}

