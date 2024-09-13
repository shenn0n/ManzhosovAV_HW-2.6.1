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
    static func getPersons() -> [Person] {
        
        let personInfo = PersonInfo()
        let names = Array(Set(personInfo.names))
        let surnames = Array(Set(personInfo.surnames))
        let e_mails = Array(Set(personInfo.e_mails))
        let phoneNumbers = Array(Set(personInfo.phoneNumbers))
        var persons: [Person] = []
        
        for n in 0...personInfo.names.count - 1 {
            persons.append(Person(name: names[n], surname: surnames[n], e_mail: e_mails[n], phoneNumber: phoneNumbers[n]))
        }
        return persons
    }
    static func getPersonsInfo(person:Person) -> [String] {
        var arrInfo:[String] = []
        arrInfo.append(person.e_mail)
        arrInfo.append(person.phoneNumber)
        return arrInfo
    }
}

