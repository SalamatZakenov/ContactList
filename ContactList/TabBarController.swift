//
//  TabBarController.swift
//  ContactList
//
//  Created by Salamat Zakenov on 19.07.2026.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionalPersonsListViewController else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}

