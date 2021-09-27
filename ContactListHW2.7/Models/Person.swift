//
//  Person.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 27.09.2021.
//


struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInfo() -> [Person] {
        [
            Person(name: "John", surname: "Rock", email: "aaa@person.com", phoneNumber: "89991112233"),
            Person(name: "Ivan", surname: "Ivanov", email: "bbb@person.com", phoneNumber: "88882221144")
        ]
    }
    
}

