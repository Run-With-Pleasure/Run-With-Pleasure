//
//  User.swift
//  Run With Pleasure
//
//  Created by Zdrenko Zigich on 30.06.2022.
//

import Foundation

struct User {
    
    let username: String
    let password: String
    
    static func getUser() -> User {
        User(
            username: UsersDataManager.shared.username.first ?? "",
            password: UsersDataManager.shared.password.first ?? "")
        
    }
    
}
