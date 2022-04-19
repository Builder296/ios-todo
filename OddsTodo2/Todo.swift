//
//  Todo.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import Foundation

struct Todo {
    let id: String = UUID().uuidString
    var details = ""
    var dueDate = Date()
    var isDone = false
    var type: TodoType = .task
}

enum TodoType {
    case task
    case shopping
    case activity
}
