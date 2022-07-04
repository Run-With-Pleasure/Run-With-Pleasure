//
//  User.swift
//  Run With Pleasure
//
//  Created by Zdrenko Zigich on 30.06.2022.
//

import Foundation

struct User {
    
    let login: String
    let password: String
    var person: Person
    
    static func createUser() -> User {
        User(
            login: "login",
            password: "password",
            person: Person(
                name: "",
                lastname: "",
                age: 0,
                height: 0,
                distance: 0.0,
                photo: "usainBolt"
            )
        )
    }
    
}

struct Person {
    var name: String
    var lastname: String
    var age: Int
    var height: Int
    var distance: Double
    let photo: String
    
    var fullName: String {
    "\(name) \(lastname)"
    }
}
