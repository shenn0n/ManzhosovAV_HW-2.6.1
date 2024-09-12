//
//  DetailsViewController.swift
//  ManzhosovAV_HW 2.6.1
//
//  Created by Александр Манжосов on 12.09.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var e_maleLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var fullName: String!
    var e_male: String!
    var phoneNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = fullName
        e_maleLabel.text = e_male
        phoneNumberLabel.text = phoneNumber
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
