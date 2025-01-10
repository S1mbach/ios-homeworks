import UIKit

class ProfileViewController: UIViewController {

    private let profileHeaderView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupProfileHeaderView()
        setupNewButton()
    }

    private func setupProfileHeaderView() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)

        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }

    private func setupNewButton() {
        let newButton = UIButton(type: .system)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.setTitle("Кнопка", for: .normal)
        view.addSubview(newButton)

        NSLayoutConstraint.activate([
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
