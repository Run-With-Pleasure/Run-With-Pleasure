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
