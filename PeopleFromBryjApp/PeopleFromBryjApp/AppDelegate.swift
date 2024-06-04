//
//  AppDelegate.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 03/06/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window:UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    // Choose the appropriate repository implementation
    let personRepository: PersonRepositoryProtocol
    
#if DEBUG
    // Injecting the mock implementation for testing
    personRepository = MockPersonRepository()
    print("Using MockPersonRepository")
#else
    // Injecting the concrete implementation for production
    personRepository = PersonRepository()
    print("Using PersonRepository")
#endif
    
    // Initialization the main view controller with the repository
    let mainViewController = PersonTableViewController(personRepository: personRepository)
    
    // Wrap the main view controller in a navigation controller
    let navigationController = UINavigationController(rootViewController: mainViewController)
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    window?.backgroundColor = .systemBlue
    
    return true
  }
}

