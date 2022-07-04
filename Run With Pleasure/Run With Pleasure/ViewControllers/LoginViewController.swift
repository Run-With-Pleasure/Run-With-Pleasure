//
//  ViewController.swift
//  Run With Pleasure
//
//  Created by Александр on 30.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameValueTF: UITextField!
    @IBOutlet weak var passwordValueTF: UITextField!
    
    let user = User.createUser()
    
    @IBAction func logInPressedButton() {
        if userNameValueTF.text == "\(user.login)" && passwordValueTF.text == "\(user.password)" {
            performSegue(withIdentifier: "goToPersonViewController", sender: nil)
        } else {
            showAlert(with: "Ошибка!", and: "Неверный Логин и/или Пароль!")
        }
    }
    
    @IBAction func forgotLoginPressedButton() {
        showAlert(with: "Забыли логин?", and: "Ваш логин - \(user.login)")
    }
    
    @IBAction func forgotPasswordPressedButton() {
        showAlert(with: "Забыли логин?", and: "Ваш логин - \(user.password)")
    }
}

extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordValueTF.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameValueTF {
            passwordValueTF.becomeFirstResponder()
        } else {
            logInPressedButton()
        }
        return true
    }
}
    
extension LoginViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let personVC = viewController as? PersonViewController {
                personVC.user = user
            } else if let cityListVC = viewController as? CityListViewController {
                cityListVC.user = user
            } else if let developersInfoVC = viewController as? DevelopersInfoViewController {
                developersInfoVC.user = user
            }
        }
    }
}
