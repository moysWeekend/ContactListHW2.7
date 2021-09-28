//
//  ContactListViewController.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 27.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
     var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Person list"
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullNameCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! PersonDetailsViewController
            detailVC.person = persons[indexPath.row]
    }
}
}
