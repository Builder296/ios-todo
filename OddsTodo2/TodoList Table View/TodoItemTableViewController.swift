//
//  TodoItemTableViewController.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 21/4/2565 BE.
//

import UIKit

class TodoItemTableViewController: UITableViewController {

    var todoItem: Todo?
    
    weak var delegate: TodoItemCreateDelegate?
    
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var dueDatePickerView: UIDatePicker!
    @IBOutlet weak var isDoneSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        //TODO: create or update todo item
        
        delegate?.onTodoItemCreate(nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
