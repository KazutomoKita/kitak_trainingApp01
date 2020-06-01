//
//  MemberTableViewCell.swift
//  kitak_trainingApp01
//
//  Created by Kazutomo Kita on 2020/06/01.
//  Copyright © 2020 Kazutomo Kita. All rights reserved.
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var memberName: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
