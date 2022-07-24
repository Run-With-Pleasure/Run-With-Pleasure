//
//  CityListViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class RoutesListViewController: UITableViewController {
    
    var routes: [Route]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        routes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "routeID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        
        content.text = routes[indexPath.row].title
        content.secondaryText = "Длительность – \(routes[indexPath.row].duration)"
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let routeInfoVC = segue.destination as? RouteInfoViewController else {return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let route = routes[indexPath.row]
        routeInfoVC.route = route
    }
}
