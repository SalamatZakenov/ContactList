//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Salamat Zakenov on 19.07.2026.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    var persons: [Person]!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            detailsVC.person = persons[indexPath.row]
        }
    }

