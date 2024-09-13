//
//  PersonsListSectionTableViewController.swift
//  ManzhosovAV_HW 2.6.1
//
//  Created by Александр Манжосов on 13.09.2024.
//

import UIKit

class PersonsListSectionTableViewController: UITableViewController {
    
    var persons: [Person] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = Person.getPersons()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Person.getPersonsInfo(person: persons[section]).count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellSec", for: indexPath)
        cell.textLabel?.text = Person.getPersonsInfo(person: persons[indexPath.section])[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "\(persons[section].name)  \(persons[section].surname)"
   }
 
}
