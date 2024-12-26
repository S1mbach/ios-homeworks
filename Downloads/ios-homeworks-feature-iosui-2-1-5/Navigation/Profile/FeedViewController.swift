

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Feed"
        let postButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        postButton.setTitle("Show Post", for: .normal)
        postButton.setTitleColor(.blue, for: .normal)
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        view.addSubview(postButton)
    }
    
    @objc func showPost() {
        let postVC = PostViewController()
        postVC.post = Post(title: "Post Title")
        navigationController?.pushViewController(postVC, animated: true)
    }
    }
