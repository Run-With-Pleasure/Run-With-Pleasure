//
//  DevelopersInfoViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class DevelopersInfoViewController: UIViewController {

    @IBOutlet var devImages: [UIImageView]!
    
    override func viewDidAppear(_ animated: Bool) {
        for devImage in devImages {
            devImage.layer.cornerRadius = devImage.frame.size.width / 2;
            devImage.clipsToBounds = true;
        }
    }
}
