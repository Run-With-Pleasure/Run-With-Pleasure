//
//  ViewController.swift
//  Run With Pleasure
//
//  Created by Александр on 30.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    private var user = User.createUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            guard let personVC = navigationVC.topViewController as? PersonViewController else { return }
            personVC.user = user
        }
    }
    
}

