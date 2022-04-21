//
//  TodoStore.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 20/4/2565 BE.
//

import Foundation

typealias OddsTodo = [Todo]

// save data tempolary
class TodoStore {
    private static var todoList: OddsTodo = []
    
    static func getAll() -> OddsTodo {
        return todoList
    }
    
    static func save(todoList: OddsTodo) {
        self.todoList = todoList
    }
}
