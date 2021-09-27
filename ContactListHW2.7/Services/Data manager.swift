//
//  Data manager.swift
//  ContactListHW2.7
//
//  Created by Alexander Burtsev on 27.09.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John",
        "Peter",
        "Alice",
        "Ivan"
    ]
    
    let surnames = [
        "Fox",
        "Ivanov",
        "Petrov",
        "Smith"
    ]
    
    let phoneNumbers = [
        "89992343434",
        "89992676767",
        "89994323232",
        "89996662121"
    ]
    
    let emails = [
        "aaa@person.com",
        "bbb@person.com",
        "ccc@person.com",
        "ddd@person.com"
    ]
    
    private init() {}
}
