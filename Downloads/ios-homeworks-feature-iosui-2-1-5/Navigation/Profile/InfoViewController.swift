

import UIKit

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Info"
        
        let alertButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        alertButton.setTitle("Show Alert", for: .normal)
        alertButton.setTitleColor(.blue, for: .normal)
        alertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        view.addSubview(alertButton)
    }
    
    @objc func showAlert() {
        let alertController = UIAlertController(title: "Info", message: "This is an info alert.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("OK tapped")
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel tapped")
        }))
        present(alertController, animated: true, completion: nil)
    }
}
