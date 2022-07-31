//
//  PersonViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValue(for person: Person)
}

class PersonViewController: UIViewController {

    @IBOutlet var photoView: UIImageView!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateInfo()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.person = person
        settingsVC.delegate = self
    }
    
    func updateInfo() {
        photoView.image = UIImage(named: person.photo)
        ageLabel.text = "Ваш возраст \(person.age)"
        heightLabel.text = "Ваш рост \(person.height) см"
        distanceLabel.text = "Вы пробежали \(person.distance) км"
        
        if person.fullName == " " {
            navigationItem.title = "Привет, спортсмен!"
        } else {
            navigationItem.title = "Привет, \(person.fullName)!"
        }
    }
}

extension PersonViewController: SettingsViewControllerDelegate {
    func setNewValue(for person: Person) {
        self.person = person
        updateInfo()
    }
}
