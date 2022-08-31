//
//  Person.swift
//  ContactList
//
//  Created by Leon Fridman on 8/31/22.
//

import Foundation

let myData = DataManager()

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getPerson() -> [Person] {
        var people = [Person]()
        let randomNames = myData.names.shuffled()
        let randomSurnames = myData.suranmes.shuffled()
        let randomPhones = myData.phones.shuffled()
        let randomMails = myData.emails.shuffled()
        
        for id in 0..<randomNames.count {
            people.append(
                Person(
                    name: randomNames[id],
                    surname: randomSurnames[id],
                    phone: randomPhones[id],
                    email: randomMails[id]
                )
            )
        }
        return people
    }
}
