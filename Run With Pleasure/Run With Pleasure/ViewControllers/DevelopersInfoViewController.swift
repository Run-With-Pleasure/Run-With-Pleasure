//
//  DevelopersInfoViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class DevelopersInfoViewController: UIViewController {

    @IBOutlet var devImages: [UIImageView]!
    
    override func viewWillLayoutSubviews() {
        for devImage in devImages {
            devImage.layer.masksToBounds = true
            devImage.layer.cornerRadius = devImage.frame.size.width/2
        }
    }
}
