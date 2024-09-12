//
//  Person.swift
//  ManzhosovAV_HW 2.6.1
//
//  Created by Александр Манжосов on 12.09.2024.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let e_mail: String
    let phoneNumber: String
}

extension Person {
    static func getPersons( names: [String],
                            surnames: [String],
                            e_mails: [String],
                            phoneNumbers: [String] ) -> [Person] {
        
        let names = Array(Set(names))
        let surnames = Array(Set(surnames))
        let e_mails = Array(Set(e_mails))
        let phoneNumbers = Array(Set(phoneNumbers))
        var persons: [Person] = []
        
        for n in 0...9 {
            persons.append(Person(name: names[n], surname: surnames[n], e_mail: e_mails[n], phoneNumber: phoneNumbers[n]))
        }
        return persons
    }
}

