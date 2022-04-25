//
//  OddsTodo.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 21/4/2565 BE.
//

import Foundation

typealias OddsTodo = [Todo]

// can use extension with type!
extension OddsTodo {
    var sortByDueDate: OddsTodo {
        return self.sorted { $0.dueDate < $1.dueDate }
    }
    
    func update(_ todo: Todo) -> OddsTodo {
        var newTodoList = self.filter { $0.id != todo.id } // filter out
        newTodoList.append(todo)
        return newTodoList
    }
    
    func save(_ todo: Todo) -> OddsTodo {
        var newTodoList = self // filter out
        newTodoList.append(todo)
        return newTodoList
    }
}
