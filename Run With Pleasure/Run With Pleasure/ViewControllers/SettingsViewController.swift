//
//  SettingsViewController.swift
//  Run With Pleasure
//
//  Created by Вячеслав Турчак on 30.06.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var  heightTextField: UITextField!
    
    var person: Person!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        lastNameTextField.delegate = self
        ageTextField.delegate = self
        heightTextField.delegate = self
        
        nameTextField.text = person.name
        lastNameTextField.text = person.lastname
        ageTextField.text = String(person.age)
        heightTextField.text = String(person.height)
    }
    
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        view.endEditing(true)
        delegate.setNewValue(for: person)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }

}

// MARK: - Text Fields

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        
        switch textField {
        case nameTextField:
            if Float(newValue) != nil {
                showAlert(with: "Неверное значение", and: "Пожалуйста, введите ваше имя")
                nameTextField.text = ""
                return
            } else {
                person.name = newValue
            }
        case lastNameTextField:
            if Float(newValue) != nil {
                showAlert(with: "Неверное значение", and: "Пожалуйста, введите вашу фамилию")
                lastNameTextField.text = ""
                return
            } else {
                person.lastname = newValue
            }
        case ageTextField:
            guard let numberValue = Int(newValue), numberValue > 0, numberValue < 100 else {
                showAlert(with: "Неверное значение", and: "Пожалуйста, введите ваш возраст")
                ageTextField.text = ""
                return
            }
            person.age = Int(newValue) ?? 0
        default:
            guard let numberValue = Int(newValue), numberValue > 0, numberValue < 300 else {
                showAlert(with: "Неверное значение", and: "Пожалуйста, введите ваш рост")
                heightTextField.text = ""
                return
            }
            person.height = Int(newValue) ?? 0
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}

// MARK: - Alert Controller

extension SettingsViewController {
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let returnAction = UIAlertAction(title: "Вернуться", style: .cancel) { _ in
        }
        alert.addAction(returnAction)
        present(alert, animated: true)
    }
    
}
