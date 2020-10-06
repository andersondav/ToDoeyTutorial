//
//  ToDoeyTableViewCell.swift
//  ToDoeyTutorial
//
//  Created by Anderson David on 10/5/20.
//

import UIKit

class ToDoeyTableViewCell: UITableViewCell {

    @IBOutlet weak var titleField: UILabel!
    @IBOutlet weak var descField: UILabel!
    @IBOutlet weak var dateField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
