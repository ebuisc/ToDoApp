//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by Ebubekir Talha İşçimen on 26.09.2023.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
