//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Salamat Zakenov on 19.07.2026.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
