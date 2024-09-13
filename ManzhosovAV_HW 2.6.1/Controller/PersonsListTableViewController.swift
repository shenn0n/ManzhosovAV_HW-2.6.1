//
//  PersonsListTableViewController.swift
//  ManzhosovAV_HW 2.6.1
//
//  Created by Александр Манжосов on 12.09.2024.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        persons = Person.getPersons()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "\(persons[indexPath.row].name) \(persons[indexPath.row].surname)"

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailsVC = segue.destination as! DetailsViewController
            detailsVC.fullName = "\(persons[indexPath.row].name) \(persons[indexPath.row].surname)"
            detailsVC.e_male = "Имейл:      \(persons[indexPath.row].e_mail)"
            detailsVC.phoneNumber = "Телефон:   \(persons[indexPath.row].phoneNumber)"
        }
    }


}
