//
//  groceryCell.swift
//  groceryList
//
//  Created by God on 9/24/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit

class groceryCell: UITableViewCell {
    var grocery: GroceryList!
    @IBOutlet weak var groceryName: UILabel!
    @IBOutlet weak var groceryPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
