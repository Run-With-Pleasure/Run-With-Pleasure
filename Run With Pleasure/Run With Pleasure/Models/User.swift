//
//  User.swift
//  Run With Pleasure
//
//  Created by Вячеслав Турчак on 30.06.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func createUser() -> User {
        User(
            login: "login",
            password: "password",
            person: Person(
                name: "",
                lastname: "",
                age: 0,
                sex: "",
                distance: 0.0
            )
        )
    }
}

struct Person {
    var name: String
    var lastname: String
    var age: Int
    var sex: String
    var distance: Double
}


