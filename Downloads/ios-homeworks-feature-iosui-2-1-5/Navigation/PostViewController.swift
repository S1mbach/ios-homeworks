
import UIKit

struct Post {
    let title: String
}

class PostViewController: UIViewController {
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        self.title = post?.title
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(showInfo))
    }
    
    @objc func showInfo() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true, completion: nil)
    }
}
