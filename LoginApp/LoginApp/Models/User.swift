//
//  User.swift
//  LoginApp
//
//  Created by Anastasia Liapich on 7/5/22.
//  Copyright © 2022 Anastasia Liapich. All rights reserved.
//

struct User {
    let userName: String
    let password: String
    let person: Person
}

extension User {
    static let anastasia = User(
        userName: "Anastasia",
        password: "Password",
        person: Person(
            bio: Person.Bio(
                name: "Anastasia",
                age: 25,
                photo: "MyPhoto"
            ),
            importantDates: [
                Person.ImportantDate(date: "30.11.1996", avent: "Birth date"),
                Person.ImportantDate(date: "30.04.2019", avent: "Marriage date"),
                Person.ImportantDate(date: "31.05.2019", avent: "Graduated university"),
                Person.ImportantDate(date: "30.10.2020", avent: "Son birth date")
            ],
            travels: [
                Person.Travel(country: "France", photo: "Paris"),
                Person.Travel(country: "UAE", photo: "Dubai"),
                Person.Travel(country: "Turkey", photo: "Istanbul")
            ]
        )
    )
}
