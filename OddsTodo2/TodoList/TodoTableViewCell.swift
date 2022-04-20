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

    @IBAction func doneSwitchChanged(_ sender: Any) {
        todoItem?.isDone = doneSwitch.isOn
    }
}
