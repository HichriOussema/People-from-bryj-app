//
//  PersonTableViewCell.swift
//  PeopleFromBryjApp
//
//  Created by oussema Hichri on 03/06/2024.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    let nameLabel = UILabel()
    let ageLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        // Adding blur effect view
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(blurEffectView)
        NSLayoutConstraint.activate([
            blurEffectView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            blurEffectView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            blurEffectView.topAnchor.constraint(equalTo: contentView.topAnchor),
            blurEffectView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])

        // Configure nameLabel
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])

        // Configure ageLabel
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(ageLabel)
        NSLayoutConstraint.activate([
            ageLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 10),
            ageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            ageLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])

        // Add border, rounded corners, and blur effect
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.gray.cgColor
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
    }

    func configure(with person: Person) {
        nameLabel.text = person.name
        ageLabel.text = "\(person.age) years old"
    }
}
