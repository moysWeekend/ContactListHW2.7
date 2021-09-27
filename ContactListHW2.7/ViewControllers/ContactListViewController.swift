//
//  ContactListViewController.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 27.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var personList = Person.getPersonInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Persons list"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullNameCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    

    
    // MARK: - Navigation
}
