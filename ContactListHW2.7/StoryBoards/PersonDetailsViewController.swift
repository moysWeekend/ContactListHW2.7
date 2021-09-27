//
//  PersonDetailsViewController.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 27.09.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"

    }
    

}
