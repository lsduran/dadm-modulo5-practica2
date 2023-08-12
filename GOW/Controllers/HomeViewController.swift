//
//  HomeViewController.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 05/08/23.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"menu.option.videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"menu.option.weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
            , MenuOption(
                title:"menu.option.characters",
                image:"person.crop.rectangle.stack.fill",
                segue:"charactersSegue")
            ,MenuOption(
                title:"menu.option.merchandise",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! MenuOptionCell
        
        // Configure the cell...

        // cell.lblMenu.text = NSLocalizedString(menuOptions[indexPath.row].title, comment: "Blah Blah")
        
        cell.lblMenu.text = menuOptions[indexPath.row].title.localized
        
        cell.imgMenu.image = UIImage(systemName: menuOptions[indexPath.row].image)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? TabBarController {
            if let vc = tabBarController.viewControllers?[0] as? WeaponsController {
                vc.arrayWeapons = AppConstants.cgoWeapons
                vc.topHeader = "headerGOW"
            }
            if let vc = tabBarController.viewControllers?[1] as? WeaponsController {
                vc.arrayWeapons = AppConstants.locusWeapons
                vc.topHeader = "headerLocus"
            }
        }
    }
}
