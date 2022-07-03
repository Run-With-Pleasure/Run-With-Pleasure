//
//  DataManager.swift
//  Run With Pleasure
//
//  Created by Zdrenko Zigich on 30.06.2022.
//

import Foundation

class UsersDataManager {
    
    static let shared = UsersDataManager()
    private init() {}
    
    let username = ["user1", "user2"]
    let password = ["password1", "password2"]
}
