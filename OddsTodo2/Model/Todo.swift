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
    
    var icon: UIImage? {
        return UIImage(named: self.type.rawValue)
    }
}

enum TodoType: String {
    case task = "task"
    case shopping = "shopping"
    case activity = "activity"
    
    static var allItems: [TodoType] {
        return [.task, .shopping, .activity]
    }

    var description: String {
        switch self {
        case .task: return "Task"
        case .shopping: return "Shopping"
        case .activity: return "Activity"
        }
        
        // TodoType.allItems[0].description
    }
}
