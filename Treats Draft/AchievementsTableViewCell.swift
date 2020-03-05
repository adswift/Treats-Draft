//
//  AchievementsTableViewCell.swift
//  Treats Draft
//
//  Created by Edna Tay  on 20/2/20.
//  Copyright © 2020 Adeena Ansari. All rights reserved.
//

import UIKit

class AchievementsTableViewCell: UITableViewCell {    
    @IBOutlet weak var statusSlider: UISlider!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    @IBOutlet weak var medalIcon: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

