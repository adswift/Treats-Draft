//
//  AchievementsTableViewCell.swift
//  Treats Draft
//
//  Created by Edna Tay  on 20/2/20.
//  Copyright © 2020 Adeena Ansari. All rights reserved.
//

import UIKit

class AchievementsTableViewCell: UITableViewCell {

    @IBOutlet weak var completedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

