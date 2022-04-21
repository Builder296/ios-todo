//
//  TodoItemTableViewController.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 21/4/2565 BE.
//

import UIKit

class TodoItemTableViewController: UITableViewController {

    var todoItem: Todo?
    
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var dueDatePickerView: UIDatePicker!
    @IBOutlet weak var isDoneSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
