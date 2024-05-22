
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let tabBarController = UITabBarController()
        
        let feedVC = FeedViewController()
        let feedNavVC = UINavigationController(rootViewController: feedVC)
        feedNavVC.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "list.dash"), tag: 0)
        
        let profileVC = ProfileViewController()
        let profileNavVC = UINavigationController(rootViewController: profileVC)
        profileNavVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.bubble.fill"), tag: 1)
        
        tabBarController.viewControllers = [feedNavVC, profileNavVC]
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        func sceneDidDisconnect(_ scene: UIScene) {
        }
        
        func sceneDidBecomeActive(_ scene: UIScene) {
        }
        
        func sceneWillResignActive(_ scene: UIScene) {
        }
        
        func sceneWillEnterForeground(_ scene: UIScene) {
        }
        
        func sceneDidEnterBackground(_ scene: UIScene) {
        }
    }
}
