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
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateInfo()
        
    }
    
    func updateInfo() {
        photoView.image = UIImage(named: user.person.photo)
        ageLabel.text = "Your age is \(user.person.age)"
        sexLabel.text = "Your sex is \(user.person.sex)"
        distanceLabel.text = "You've run \(user.person.distance) km"
        
        if user.person.fullName == " " {
            navigationItem.title = "Hello, runer!"
        } else {
            navigationItem.title = "Hello, \(user.person.fullName)!"
        }
    }
    
}
