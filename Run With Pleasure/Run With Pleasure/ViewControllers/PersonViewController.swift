//
//  PersonViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var photoView: UIImageView!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateInfo()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.person = person
    }
    
    func updateInfo() {
        photoView.image = UIImage(named: person.photo)
        ageLabel.text = "Your age is \(person.age)"
        sexLabel.text = "Your sex is \(person.sex)"
        distanceLabel.text = "You've run \(person.distance) km"
        
        if person.fullName == " " {
            navigationItem.title = "Hello, runer!"
        } else {
            navigationItem.title = "Hello, \(person.fullName)!"
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        person = settingsVC.person
        updateInfo()
    }
    
}
