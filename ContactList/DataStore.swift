//
//  DataStore.swift
//  ContactList
//
//  Created by Salamat Zakenov on 19.07.2026.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola", "Allan",
        "Carl", "Bruce"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jenkins", "Holmes", "Watson", "Gordon",
        "Wayne", "Banner"
    ]
        
    let emails = [
        "john@mail.ru", "aaron@mail.ru", "tim@mail.ru", "ted@mail.ru",
        "steven@mail.ru", "sharon@mail.ru", "nicola@mail.ru", "allan@mail.ru",
        "carl@mail.ru", "bruce@mail.ru"
    ]
        
    let phones = [
        "700000000", "711111111", "722222222", "733333333",
        "744444444", "755555555", "766666666", "777777777",
        "788888888", "799999999"
    ]
    
    private init() {}
}
