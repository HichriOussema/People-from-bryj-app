//
//  MockPersonRepository.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 04/06/2024.
//

import Foundation

class MockPersonRepository: PersonRepositoryProtocol {
    func fetchPersons() -> [Person] {
        return [
            Person(name: "Test User 1", age: 99),
            Person(name: "Test User 2", age: 88),
            Person(name: "Test User 3", age: 77)
        ]
    }
}
