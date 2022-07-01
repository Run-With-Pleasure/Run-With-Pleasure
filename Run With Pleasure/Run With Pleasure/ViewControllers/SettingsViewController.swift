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
    @IBOutlet var sexTextField: UITextField!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        lastNameTextField.delegate = self
        ageTextField.delegate = self
        sexTextField.delegate = self
    }
    
    
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: - Text Fields

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        
        if textField == nameTextField {
            if Float(newValue) != nil {
                showAlert(with: "Incorrect value", and: "Please, enter your name")
                nameTextField.text = ""
                return
            } else {
                person.name = newValue
            }
        } else if textField == lastNameTextField {
            if Float(newValue) != nil {
                showAlert(with: "Incorrect value", and: "Please, enter your lastname")
                lastNameTextField.text = ""
                return
            } else {
                person.lastname = newValue
            }
        } else if textField == ageTextField {
            guard let numberValue = Float(newValue), numberValue > 0 else {
                showAlert(with: "Incorrect value", and: "Please, enter your age")
                ageTextField.text = ""
                return
            }
            person.age = Int(newValue) ?? 0
        } else {
            if Float(newValue) != nil {
                showAlert(with: "Incorrect value", and: "Please, enter your sex")
                sexTextField.text = ""
                return
            } else {
                person.sex = newValue
            }
        }
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
        let returnAction = UIAlertAction(title: "Return", style: .cancel) { _ in
        }
        alert.addAction(returnAction)
        present(alert, animated: true)
    }
    
}
