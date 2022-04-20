//
//  TodoTableViewCell.swift
//  OddsTodo2
//
//  Created by kessirin muenwongsa on 19/4/2565 BE.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    var todoItem: Todo?

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!
    @IBOutlet weak var doneSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setValueFor(_ todoItem: Todo) {
        self.todoItem = todoItem
        detailsLabel.text = todoItem.details
        dueDateLabel.text = todoItem.dueDate.description
        doneSwitch.isOn = todoItem.isDone
        iconImageView.image = todoItem.icon
    }

    @IBAction func doneSwitchChanged(_ sender: Any) {
        todoItem?.isDone = doneSwitch.isOn
    }
}
