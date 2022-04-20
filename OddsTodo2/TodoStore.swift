//
//  TodoStore.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 20/4/2565 BE.
//

import Foundation

// save data tempolary
class TodoStore {
    private static var todoList: [Todo] = []
    
    static func getAll() -> [Todo] {
        return todoList
    }
    
    static func save(todoList: [Todo]) {
        self.todoList = todoList
    }
}
