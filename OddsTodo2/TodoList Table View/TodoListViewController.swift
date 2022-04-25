//
//  ViewController.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import UIKit

protocol TodoItemCreateDelegate: AnyObject {
    func onTodoItemCreate(_ todoItem: Todo?)
}

class TodoListViewController: UIViewController, UITableViewDataSource, TodoTableViewCellDelegate, TodoItemCreateDelegate {
    
    var todoList: OddsTodo {
        get {
            TodoStore.getAll().sorted {
                $0.dueDate < $1.dueDate
            }
        }
        set {
            TodoStore.save(todoList: newValue)
            tableView.reloadData()
        }
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count // row of table
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "todoCell",
                for: indexPath) as? TodoTableViewCell
        else {
            return UITableViewCell()
        }
        
        let todoItem = todoList[indexPath.row]
        cell.setValueFor(todoItem)
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todoItem = todoList[indexPath.row]
        navigateToTodoItemViewController(todoItem)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
//        todoList.append(Todo(
//            details: "Test \(todoList.count + 1)",
//            dueDate: Date(),
//            isDone: false,
//            type: .activity
//        ))
        navigateToTodoItemViewController(nil)
    }
    
    func navigateToTodoItemViewController(_ todoItem: Todo?) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "todoItemScene")
        if let todoItemVC = viewController as? TodoItemTableViewController {
            todoItemVC.delegate = self
            navigationController?.pushViewController(todoItemVC, animated: true)
        }
    }
    
    func onTodoChanged(_ todoItem: Todo?) {
        if let item = todoItem {
            todoList = todoList.update(item)
        }
    }
    
    func onTodoItemCreate(_ todoItem: Todo?) {
        if let item = todoItem {
            todoList.append(item)
        }
    }
}

