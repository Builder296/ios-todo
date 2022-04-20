//
//  ViewController.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDataSource, TodoTableViewCellDelegate {
    
    var todoList: [Todo] {
        get {
            TodoStore.getAll()
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
    
    @IBAction func addButtonTapped(_ sender: Any) {
        todoList.append(Todo(
            details: "Test",
            dueDate: Date(),
            isDone: false,
            type: .activity
        ))
    }
    
    func onTodoChanged(_ todoItem: Todo?) {
        print(todoItem!)
    }
}

