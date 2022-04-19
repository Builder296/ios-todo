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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

