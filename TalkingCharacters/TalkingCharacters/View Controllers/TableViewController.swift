//
//  TableViewController.swift
//  TalkingCharacters
//
//  Created by Jessie Ann Griffin on 8/1/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var characters = Model.shared.characters

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        let character = characters[indexPath.row]
        cell.character = character
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDetailView" {
            if let indexPath = tableView.indexPathForSelectedRow, let detailVC = segue.destination as? DetailViewController {
                detailVC.character = characters[indexPath.row]
            }
        }
    }

}
