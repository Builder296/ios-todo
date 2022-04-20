//
//  ViewController.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDataSource {
    
    var todoList: [Todo] = [
        Todo(details: "", type: .task),
        Todo(details: "", type: .task),
        Todo(details: "", type: .shopping),
        Todo(details: "", type: .activity),
        Todo(details: "", type: .task),
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int // if you have 1 session it's not necessary.
    
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
        
        cell.detailsLabel.text = todoItem.details
        cell.dueDateLabel.text = todoItem.dueDate.description
        cell.doneSwitch.isOn = todoItem.isDone
        cell.iconImageView.image = todoItem.icon
        
        return cell
    }
    
}

