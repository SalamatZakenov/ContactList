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
        let persons = Person.getContactList()
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navVC = viewController as? UINavigationController {
                if let firstVC = navVC.topViewController as? PersonsListViewController {
                    firstVC.persons = persons
                } else if let secondVC = navVC.topViewController as? SectionalPersonsListViewController {
                    secondVC.persons = persons
                }
            }
        }
    }
}

