//
//  PersonRepositoryProtocol.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 04/06/2024.
//

import Foundation

protocol PersonRepositoryProtocol {
  func fetchPersons() -> [Person]
}
