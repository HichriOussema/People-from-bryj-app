//
//  PersonRepository.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 03/06/2024.
//

import Foundation

class PersonRepository: PersonRepositoryProtocol {
  func fetchPersons() -> [Person] {
    return [
      Person(name: "oussema Hichri", age: 29),
      Person(name: "Mariana Cardoso", age: 22),
      Person(name: "Pedro Fernandes", age: 25),
      Person(name: "Person two", age: 26),
      Person(name: "Person three", age: 33),
      Person(name: "Person four", age: 28),
    ]
  }
  
  
}
