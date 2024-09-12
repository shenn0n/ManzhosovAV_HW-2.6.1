//
//  PersonsListTableViewController.swift
//  ManzhosovAV_HW 2.6.1
//
//  Created by Александр Манжосов on 12.09.2024.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    let names = ["Angela", "Michael", "Oscar",
                 "Jennifer", "Seth", "April",
                 "Herbert", "Allen", "Carol", "Daniel"]
    
    let surnames = ["Yates", "Phillips", "Brown",
                    "Fox", "Allery", "Wheeler",
                    "Matthews", "Simmons", "Baker", "Nelson"]
    
    let e_mails = ["hirokot990@konetas.com", "wixeunnanecra@yopmail.com",
                   "runnobrixuwu@yopmail.com", "jabrannocouqua@yopmail.com",
                   "trogranneullello@yopmail.com", "frobrouquitroddo@yopmail.com",
                   "nuxewolavau@yopmail.com", "romkjroummuxa@yopmail.com",
                   "weruoummuxa@yopmail.com", "tacagroummuxa@yopmail.com"]
    
    
    let phoneNumbers = ["861-22-20", "456-40-31",
                        "881-79-04", "310-75-53",
                        "027-93-48", "460-12-65",
                        "789-95-82", "501-06-11",
                        "828-81-47", "041-06-27"]
    
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        persons = Person.getPersons(names: names, surnames: surnames, e_mails: e_mails, phoneNumbers: phoneNumbers)
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
