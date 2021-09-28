//
//  TabBarViewController.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 28.09.2021.
//

import UIKit

    import UIKit

    class TabBarViewController: UITabBarController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setupViewControllers()
        }
        
        private func setupViewControllers() {
            let persons = Person.getPersonInfo()
            let contactListVC = viewControllers?.first as? ContactListViewController
            let sectionVC = viewControllers?.last as? SectionViewController
           
            contactListVC?.persons = persons
            sectionVC?.persons = persons
        }

}
