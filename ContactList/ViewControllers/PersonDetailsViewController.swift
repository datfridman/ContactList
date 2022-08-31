//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Leon Fridman on 8/31/22.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLable: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullname
        phoneNumberLable.text = person.phone
        emailLabel.text = person.email
    }
    

}
