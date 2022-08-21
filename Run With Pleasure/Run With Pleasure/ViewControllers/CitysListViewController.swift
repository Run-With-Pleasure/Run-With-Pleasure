//
//  CitysListViewController.swift
//  Run With Pleasure
//
//  Created by Pavel Naumov on 30.06.2022.
//

import UIKit

class CitysListViewController: UITableViewController {
    
    var user: User!
    
    private let citys = City.getCityList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Города"
        tableView.rowHeight = 125
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        citys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let city = citys[indexPath.row]
        
        content.text = city.name
        content.secondaryText = "Количество маршрутов – \(city.routes.count)"
        content.image = UIImage(named: city.name)
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let routesListVC = segue.destination as? RoutesListViewController else {return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let routes = citys[indexPath.row].routes
        routesListVC.routes = routes
        routesListVC.title = citys[indexPath.row].name
    }
}

