//
//  RouteInfoViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class RouteInfoViewController: UIViewController {
    
    @IBOutlet weak var routeOnMap: UIImageView!
    @IBOutlet weak var routeDescription: UILabel!
    @IBOutlet weak var routeDistance: UILabel!
    @IBOutlet weak var routeDificulty: UILabel!
    @IBOutlet weak var routeDuration: UILabel!
    @IBOutlet weak var routeWithChild: UILabel!
    @IBOutlet weak var routeMobileNetwork: UILabel!
    
    @IBOutlet weak var letsRunButton: UIButton!
    
    
    var route: Route!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInfo()
    }
    
    private func updateInfo() {
        title = route.title
        
        routeOnMap.image = UIImage(named: route.title)
        routeDescription.text = route.description
        routeDistance.text = "Дистанция маршрута – \(route.distance) (м)"
        routeDificulty.text = "Сложность маршрута – \(route.dificulty)"
        routeDuration.text = "Длительность – \(route.duration)"
        routeWithChild.text = "С детьми – \(route.withChild)"
        routeMobileNetwork.text = "Мобильная связь – \(route.mobileNetwork)"
    }
    
    private func showAnimation() {
        letsRunButton.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
                            self.letsRunButton.transform = CGAffineTransform.identity
                       },
                       completion: { Void in()  }
        )
    }
    
    private func showAlert() {
        let refreshAlert = UIAlertController(title: "Внимание!", message: "Вы действительно хотите добавить маршрут \(route.title)?", preferredStyle: UIAlertController.Style.alert)
        refreshAlert.addAction(UIAlertAction(title: "Да", style: .default))
        refreshAlert.addAction(UIAlertAction(title: "Нет", style: .cancel))

        present(refreshAlert, animated: true, completion: nil)
    }
    
    @IBAction func letsRunButtonPressed() {
        print("pressed")
        showAnimation()
        showAlert()
    }
}
