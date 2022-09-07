//
//  SimplePersonViewController.swift
//  ContactList
//
//  Created by Leon Fridman on 8/31/22.
//

import UIKit

class SimplePersonListViewController: UITableViewController {
    
    private var personsList = Person.getPerson()


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullname
        
        cell.contentConfiguration = content
        
        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = personsList[index.row]
        personDetailsVC.person = person
        
    }

}
