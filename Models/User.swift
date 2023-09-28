//
//  User.swift
//  ToDoApp
//
//  Created by Ebubekir Talha İşçimen on 26.09.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
