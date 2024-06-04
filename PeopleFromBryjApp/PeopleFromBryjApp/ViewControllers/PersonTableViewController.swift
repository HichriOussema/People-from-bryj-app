//
//  PersonTableViewController.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 03/06/2024.
//

import UIKit

class PersonTableViewController: UITableViewController {

    private let personRepository: PersonRepositoryProtocol
    private var persons: [Person] = []

    init(personRepository: PersonRepositoryProtocol) {
        self.personRepository = personRepository
        super.init(style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        fetchData()
    }
}

// MARK: - Setup UI
private extension PersonTableViewController {
    func setupTableView() {
        self.title = "Persons"
        tableView.register(PersonTableViewCell.self, forCellReuseIdentifier: "PersonCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }
}

// MARK: - Data Fetching
private extension PersonTableViewController {
    func fetchData() {
        persons = personRepository.fetchPersons()
        tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension PersonTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonTableViewCell
        let person = persons[indexPath.row]
        cell.configure(with: person)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension PersonTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        showAlert(for: person)
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 0.5, delay: 0.05 * Double(indexPath.row), animations: {
            cell.alpha = 1
        })
    }
}

// MARK: - Alert Handling
private extension PersonTableViewController {
    func showAlert(for person: Person) {
        let alert = UIAlertController(title: "Welcome", message: "Welcome to BRYJ \(person.name)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
