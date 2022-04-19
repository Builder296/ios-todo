//
//  Todo.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import Foundation
import UIKit

struct Todo {
    let id: String = UUID().uuidString
    var details = ""
    var dueDate = Date()
    var isDone = false
    var type: TodoType = .task
    
    var icon: UIImage {
        return UIImage(named: self.type.rawValue) ?? UIImage()
    }
}

enum TodoType: String {
    case task = "task"
    case shopping = "shopping"
    case activity = "activity"
}
